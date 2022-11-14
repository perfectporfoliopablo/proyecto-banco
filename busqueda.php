<?php


    $busqueda=$_GET['buscar'];

   
    
    $conexion=mysqli_connect("localhost","root","","banco");
    if (!$conexion){
        echo 'Error al conectar a la base de datos';
    }
    else{
        echo 'Conectado a la Base de Datos banco';
    
    }
	

	mysqli_select_db($conexion, 'banco') or die ("No se encuentra la BBDD");
	
	mysqli_set_charset($conexion, "ytf8");
	
	$consulta="SELECT * FROM EQUIPOS WHERE NUMERO='$busqueda'";
	
	$resultado=mysqli_query($conexion, $consulta);

    while($fila=$resultado->fetch_assoc()){
		
		echo"<table><tr><td>";

	
	
	echo $fila['NUMERO'] . "</td><td> ";
	
	echo $fila['SISTEMA_OPERATIVO'] . "</td><td> ";
	
	echo $fila['PLACA_BASE'] . "</td><td> "; 
		
	echo $fila['PORCESADOR'] . "</td><td></tr></table> ";
		
	echo "<br>";
		
	echo "<br>";
	}
?>
<?php
if($resultado==true){
    ?>
<head>
<link rel="stylesheet" href="style1.css" />
</head>
<body>
        <h3>¿Quieres escribir una incidencia para este equipo?</h3>
        <form action="incidencia.php" method="get">
        <label for="buscar equipo">Escribe el Código del ordenador:</label>
        <input type="text" size="5" maxlength="5"id="codigo" name="codigo">
        <br><br>
        <label for="buscar equipo">Escribe la fecha de la incidencia:</label>
        <input type="text" size="10" maxlength="10"id="fecha" name="fecha">
       <br><br>
        <label for="buscar equipo">Escribe la hora de la incidencia:</label>
       <input type="text" size="5" maxlength="10"id="hora" name="hora">
        <br><br>
        <label for="buscar equipo">Escribe la incidencia:</label>
        <input type="text" size="150" maxlength="150"id="incidencia" name="incidencia"> 
       <br><br>
       <input type="submit" value="Introducir">
       </form>
</body>
<?php
}
else{}
?>
<?php
    mysqli_close($conexion);

?>