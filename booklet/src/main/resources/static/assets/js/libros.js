var $table = $('#idTableSelect')
$('document').ready(function () { 
    
    
    if(mensaje != ""){
		if(mensaje === 'Libro Agregado'){
			alertify.success(mensaje); 
		}
		if(mensaje === 'Libro Borrado'){
			alertify.success(mensaje); 
		}
		if(mensaje === 'Libro Actualizado'){
			alertify.success(mensaje); 
		}
		if(mensaje === 'Datos Vacios'){
			alertify.error(mensaje); 
		}
		if(mensaje === 'Ya no Hay Registros'){
			alertify.warning(mensaje); 
		}
    }
    
	$table.bootstrapTable({
		data: libroDtoJson,
		pagination: true,
		search: true,
		pageSize: 5,
		pageList: [5, 10],
		locale: "es-ES",
		columns: [{
			field: 'libro.id',
			title: 'ID',
			width: '40px'
		}, {
			field: 'libro.titulo',
			title: 'Titulo',
			width: '180px'
		}, {
			field: 'libro.anio',
			title: 'Año',
			width: '180px'
		}, {
			field: 'libro.autor',
			title: 'Autor',
			width: '180px'
		}, {
			field: 'libro.imprenta',
			title: 'Imprenta',
			width: '180px'
		}, {
			field: 'libro.disponible',
			title: 'Disponible',
			width: '180px',
			formatter: function(value, row, index) {
				if(value){
					return 'Si';
				}else{
					return 'No';
				};
			}
			
		}, {
			field: '',
			title: 'Acción',
			align: 'center',
			valign: 'middle',
			width: '150px',
			clickToSelect: false,
			formatter: function(value, row, index) {
				//Aqui defines el boton y en tu caso tendras que ponerle el onClick, 
				//recuerda que row tiene el objeto del renglon actual, 
				//en este ejemplo agrege funcionPorDefinir y le envio el row.id
							//console.log("row");
				//console.log(row.idAlumno);
				console.log(JSON.stringify(row));
				console.log($.param(row))
				return [
					"<a class='like' href='#' data-toggle='modal' data-target='#modalEditarLibro' onclick='onClickEditar(\"" + JSON.stringify(row).split('"').join('\\"') + "\");' title='Editar'>",						
					'<i class="fa-solid fa-pen-to-square"></i>',
					"</a>  ",
					"<a class='remove' href='#' onclick='onClickEliminar(\"" + row.libro.id + "\");' title='Borrar'>",
					'<i class="fa fa-trash"></i>',
					'</a>'
				].join('');
			}
		}
		]
	});
   
    $('#idAnio').datepicker({
                  format: " yyyy",
              viewMode: "years", 
            minViewMode: "years"
                });  
     
     $('#modelEditar').modal('show');	
});
 function onClickEditar(row) {
	
	//let rowObj = JSON.parse(row);
	var libroDto = JSON.parse(row);
	console.log(libroDto);
	console.log(libroDto.libro.id);
	console.log(libroDto.libro.titulo);
	console.log(libroDto.libro.anio);
	console.log(libroDto.libro.autor);
	console.log(libroDto.libro.imprenta);
	console.log(libroDto.libro.disponible);
	$('#idIdEditar').val(libroDto.libro.id);
//	$("#idTituloEditar").val()=ibroDto.libro.titulo;
//	$("#idTxtEditarNombre").val(alumnoDto.nombre);
//	$("#idTxtEditarApellido").val(alumnoDto.apellido);
//	$("#idTxtEditarFecNacimiento").val(alumnoDto.fechaNac);
	
}

function onClickEliminar(id){
		
	console.log(id);
	window.location.href = "/Booklet/deleteLibro/?id=" +id;
}

	