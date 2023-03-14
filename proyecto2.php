<html>

<head>
    <meta charset="UTF-8">
    <title>ejercicio2</title>
</head>

<body>
    <form method="post">
        Personas sanas:
        <input type="number" name="san" required><br>
        Personas infectadas:
        <input type="number" name="infect" required><br>

        <input type="submit" name="ok" value="Simular">
    </form><br>

    <?php

    if(!isset($_REQUEST['ok'])){
        die;
    }

    //conexion con la bdd
    $base = 'ejercicio2';
    $tabla = 'apocalipsis';
    $bd = new PDO("mysql:dbname=$base;host=localhost", 'root', '');

    //variables
    $sanos = $_REQUEST['san'];
    $infectados = $_REQUEST['infect'];
    $cnt = 0;
    $bol = true;

    while ($cnt < 20 and $bol == true) {
        if(!empty($_REQUEST['infect'])){
        //1paso
        $primer = ($sanos * 10) / 100;

        //2paso
        $segundo = ($infectados * 5) / 100;

        //3paso
        $tercer = ($infectados * 15) / 100;

        //4paso
        $cuarto = ($sanos * 5) / 100;

        //resultados
        $sanos = ($sanos - $primer + $segundo - $tercer);
        $infectados = ($infectados + $primer - $segundo + $tercer - $cuarto);
    }

        $cnt++;

        if($sanos < ($_REQUEST['san']/2)){
            $apocalipsis = $bd->prepare("insert into $tabla(sanos,infectados,dias,resultado) values (?,?,?,?)");
            $apocalipsis->execute(array($sanos, $infectados, $cnt, "0"));
                $bol = false;
                $texto = "Población con riesgo";
        }
    
        if ($cnt === 20) {
            $apocalipsis = $bd->prepare("insert into $tabla(sanos,infectados,dias,resultado) values (?,?,?,?)");
            $apocalipsis->execute(array($sanos, $infectados, $cnt, "1"));
                $bol = false;
                $texto = "Población sin riesgo";
        }
    }

    $sanored = round($sanos);
    $infectred = round($infectados);

    echo "Día: $cnt<br>";
    echo "Sanos iniciales: $_REQUEST[san]<br>";
    echo "Sanos: $sanored<br>";
    echo "Infectados: $infectred<br>";
    echo "$texto<br>";
    ?>

</body>
</html>