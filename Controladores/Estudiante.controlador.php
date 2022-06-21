<?php

class ControladorEstudiante{

	/*=============================================
	Estudiante
	=============================================*/

	static public function CtrIngresarEstudiante(){

		if(isset($_POST["registroNombre"])){

			$tabla = "estudiante";

			$datos = array("Nombre" => $_POST["registroNombre"],
				           "Correo" => $_POST["registroCorreo"],
				           "Telefono" => $_POST["registroTelefono"],
                           "FechaIngreso" => $_POST["registroFechaIngreso"]);

			$respuesta = ModeloEstudiante::mdlIngresarEstudiante($tabla, $datos);

			return $respuesta;

		}

	}

	/*=============================================
	Seleccionar Registros Estudiante
	=============================================*/

	static public function ctrSeleccionarRegistroEstudiante($item, $valor){

	$tabla = "estudiante";
		$respuesta = ModeloEstudiante::mdlSeleccionarRegistro($tabla, $item, $valor);

		return $respuesta;

	}



	/*=============================================
	Actualizar Registro Estudiante
	=============================================*/
	static public function ctrActualizarEstudiante(){

		if(isset($_POST["actualizarNombre"])){	

			$tabla = "estudiante";

			$datos = array( "IdEstudiante"=>$_POST["IdEstudiante"],
							"Nombre" => $_POST["actualizarNombre"],
				           "Correo" => $_POST["actualizarCorreo"],
				           "Telefono" =>$_POST["actualizarTelefono"],
                           "FechaIngreso"=> $_POST["actualizarFechaIngreso"]);

			$respuesta = ModeloEstudiante::mdlActualizarEstudiante($tabla, $datos);

			return $respuesta;

		


	}
}

	/*=============================================
	Eliminar Estudiante
	=============================================*/
	public function ctrEliminarEstudiante(){

		if(isset($_POST["eliminarEstudiante"])){

			$tabla = "estudiante";
			$valor = $_POST["eliminarEstudiante"];

			$respuesta = ModeloEstudiante::mdlEliminarEstudiante($tabla, $valor);

			if($respuesta == "ok"){

				echo '<script>

					if ( window.history.replaceState ) {

						window.history.replaceState( null, null, window.location.href );

					}

					window.location = "index.php?pagina=inicioEstudiante";

				</script>';

			}

		}

	}
	



}