<?php


$usuarios = ControladorCurso::ctrSeleccionarRegistroCurso(null, null);


?>



<table class="table table-striped">
	<thead>
		<tr>
			<th>#</th>
			<th>Nombre</th>
            <th>Descripción</th>
			<th>Acciones</th>
		</tr>
	</thead>

	<tbody>

	<?php foreach ($usuarios as $key => $value): ?>

		<tr>
			<td><?php echo ($key+1); ?></td>
			<td><?php echo $value["Nombre"]; ?></td>
			<td><?php echo $value["Descripcion"]; ?></td>
			<td>

			<div class="btn-group">

				<div class="px-1">
				
				<a href="index.php?pagina=editarCurso&IdCurso=<?php echo $value["IdCurso"]; ?>" class="btn btn-warning"><i class="fas fa-pencil-alt"></i></a>

				</div>

				<form method="post">

					<input type="hidden" value="<?php echo $value["IdCurso"]; ?>" name="eliminarCurso">
					
					<button type="submit" class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>

					<?php

						$eliminar = new ControladorCurso();
						$eliminar -> ctrEliminarCurso();

					?>

				</form>	
			
				

			</div>
			
				

			</td>
		</tr>
		
	<?php endforeach ?>	
	
	</tbody>
</table>