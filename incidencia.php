<?php


    
    $cod=$_GET['codigo'];
    $fec=$_GET['fecha'];
    $hor=$_GET['hora'];
    $inci=$_GET['incidencia'];
    
    
    $conexion=mysqli_connect("localhost","root","","banco");
    if (!$conexion){
        echo 'Error al conectar a la base de datos';
    }
    else{
        
    
    }
	

	mysqli_select_db($conexion, 'banco') or die ("No se encuentra la BBDD");
	
	mysqli_set_charset($conexion, "ytf8");
	
	$consulta="INSERT INTO incidencia (CODIGO_ORDENADOR, FECHA , HORA , INCIDENCIA) VALUES ('$cod', '$fec', '$hor', '$inci')";
	
	$resultado=mysqli_query($conexion, $consulta);
    
   

    
    if($resultado==false){
        
        echo "error en la consulta";
    }else{
        echo "registro guardado";
    }

   
    
    mysqli_close($conexion);

?>