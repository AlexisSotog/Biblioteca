<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<meta charset="UTF-8">
	<title>Biblioteca</title>
   
	  <!--Fontawesome CDN-->
    <link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	<!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
	
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.css">
    <!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/styles.css">
	
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script type="text/javascript">
		let mensaje = "${mensaje}";
		let libroDtoJson = ${libroDtoJson};
	</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-5" style="border:1px;" >	
	
	<fieldset class="border p-2 flex">
	 <legend  class="float-none w-auto ">Mantenedor de Libros</legend>
		<form:form class="form-inline " action="/Booklet/addLibro" method="POST" modelAttribute="libroDto">
		   <label for="idTitulo" class="">Titulo:</label>
		   <form:input path="libro.titulo" id="idTitulo" name="titulo" cssClass="m-2" />
		   <label for="idAnio"  class="">Año:</label>
		   <form:input path="libro.anio" id="idAnio" name="anio" cssClass="m-2" type="text"/>
		   <label for="idAutor" class="">Autor:</label>
		   <form:input path="libro.autor" id="idAutor" name="autor" cssClass="m-2"/>
		   <label for="idImprenta"  class="">Imprenta:</label>
		   <form:input path="libro.imprenta" id="idImprenta" name="imprenta" cssClass="m-2"/>
		   <label for="idDisponible"  class="">Disponible:</label>
		   <form:checkbox path="libro.disponible" id="idDisponible" name="disponible" cssClass="m-2"/>
		<form:button id="idButton" type="submit">Agregar</form:button>
	
		</form:form>
	</fieldset>
	</div>
	<div class="container mt-5">
		<fieldset class="border p-2 flex">
		 <legend  class="float-none w-auto ">Mantenedor de Libros</legend>
		 	<table id="idTableSelect" class="table table-hover" >
			
		 	</table>
		 </fieldset> 
	 </div>
	 
	 <!-- Modal Editar-->
	<div class="modal fade" id="modalEditarLibro" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Editar Libro</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form class="form-inline " action="/Booklet/updateLibro" method="POST" modelAttribute="libroDto">
					   <form:input path="libro.id" id="idIdEditar" name="titulo" cssClass="m-2" class="hidden" />
					   <label for="idTituloEditar" class="">Titulo:</label>
					   <form:input path="libro.titulo" id="idTituloEditar" name="titulo" cssClass="m-2" />
					   <label for="idAnioEditar"  class="">Año:</label>
					   <form:input path="libro.anio" id="idAnioEditar" name="anio" cssClass="m-2" type="text"/>
					   <label for="idAutorEditar" class="">Autor:</label>
					   <form:input path="libro.autor" id="idAutorEditar" name="autor" cssClass="m-2"/>
					   <label for="idImprentaEditar"  class="">Imprenta:</label>
					   <form:input path="libro.imprenta" id="idImprentaEditar" name="imprenta" cssClass="m-2"/>
					   <label for="idDisponibleEditar"  class="">Disponible:</label>
					   <form:checkbox path="libro.disponible" id="idDisponibleEditar" name="disponible" cssClass="m-2"/>
					<form:button id="idButtonEditar" type="submit">Agregar</form:button>
				
					</form:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-primary" id=idBtnEditarAlumno>Enviar</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="//code.jquery.com/jquery-2.1.3.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table-locale-all.min.js"></script>
	<!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<script src="https://kit.fontawesome.com/bedf425191.js" crossorigin="anonymous"></script>
	
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/libros.js"></script>
</body>
</html>