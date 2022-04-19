<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<meta charset="UTF-8">
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
      <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!--Bootsrap 4 CDN-->
	<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	
	
	<!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	<!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
	
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.css">
    <script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table-locale-all.min.js"></script>
	
	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/styles.css">
	
	<script type="text/javascript">
		//let mensaje = "${mensaje}"; 
	</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-5" style="border:1px;" >	
	
	<fieldset class="border p-2 flex">
	 <legend  class="float-none w-auto ">Mantenedor de Libros</legend>
		<form:form class="form-inline" action="/Booklet/addLibro" method="POST" modelAttribute="libroDto">
		   <label for="idTitulo" class="">Titulo:</label>
		   <form:input path="libro.titulo" id="idTitulo" name="titulo" cssClass="m-2"/>
		   <label for="idAnio"  class="">Año:</label>
		   <form:input path="libro.anio" id="idAnio" name="anio" cssClass="m-2"/>
		   <label for="idAutor" class="">Autor:</label>
		   <form:input path="libro.autor" id="idAutor" name="autor" cssClass="m-2"/>
		   <label for="idImprenta"  class="">Imprenta:</label>
		   <form:input path="libro.imprenta" id="idImprenta" name="imprenta" cssClass="m-2"/>
		   <label for="idDisponible"  class="">Disponible:</label>
		   <form:checkbox path="libro.disponible" id="idDisponible" name="disponible" cssClass="m-2"/>
		
		
		<form:button id="idButton" type="submit" data-toggle="modal" data-target="#modalAlerta">Agregar</form:button>
	
		</form:form>
	</fieldset>
	
	</div>
	<div class="container mt-5">
		<fieldset class="border p-2 flex">
		 <legend  class="float-none w-auto ">Mantenedor de Libros</legend>
		 	<table id="idTableSelect" class="table table-hover" >
			<tr>
				<th>id</th>
				<th>Nombre</th>
				<th>Apellido Paterno</th>
				<th>Apellido Materno</th>
				<th>Direccion</th>
				<th>Telefono</th>
			</tr>
		 	</table>
		 </fieldset> 
	 </div>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/libros.js"></script>
</body>
</html>