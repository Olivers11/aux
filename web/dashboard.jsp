<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="servlet.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Estudiante"%>
<%@page import="controllers.EstudentController"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>User Dashboard</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<style><%@include file="/WEB-INF/css/init.css"%></style>

	</head>
	<body>
		<header>
                        <nav class="navbar navbar-dark ">
                                <a class="navbar-brand">Registro UMG</a>
                                <form class="form-inline">
                                        <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Salir</button>
                                </form>
                        </nav>
                </header>

		<div class="container card-container">
			<div class="row">
				<div class="col-md-6">
					<div class="card-body border">
                                                <h1 class="text-center user-title" >Registrar Usuario</h1>
                                                <form id="form1" action="registrar_servlet" method="POST" class="form-group form-container"
						      onsubmit="event.preventDefault(); return registrarUsuario();">

                                                        <div class="form-group">
                                                                <input autocomplete="off" type="text" id="nombre1" name="nombre"
								       class="form-control" placeholder="Usuario" />
                                                        </div>
							<div class="form-group">
								<input type="password" autocomplete="off" class="form-control" 
								       id="contra1" placeholder="Contraseña" name="contra"/>
							</div>                                        

							<div class="form-group text-center">

								<input type="submit" class="btn btn-inline text-center  button1" 
								       value="Agregar" />
							</div>
                                                </form>
                                        </div>
				</div>
				<div class="col-md-5 border">
					<div class="card-body">
                                                <h1 class="text-center">Registrar Estudiante</h1>
                                                <form action="estudiante_servlet" method="POST" onsubmit="event.preventDefault(); return registrarEstudiante();"
						      id="form2" class="form-group form-container">
                                                        <div class="form-group">
                                                                <input autocomplete="off" type="text" id="nombre" name="carnet"
								       class="form-control" placeholder="Carnet" />
                                                        </div>
							<div class="form-group">
								<input type="text" autocomplete="off" class="form-control" 
								       id="contra" placeholder="Nombre" name="nombre"/>
							</div>                                        

							<div class="form-group">
								<label>Fecha de Nacimiento</label>
								<input type="date" autocomplete="off" class="form-control" 
								       id="nombre" name="fecha" />
							</div>
							<div class="form-group text-center">

								<input type="submit" class="btn btn-inline text-center  button" 
								       value="Registrar" />
							</div>
                                                </form>
                                        </div>				
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="card-body">
                                                <h1 class="text-center " id="inscr-title">Inscribir Estudiante</h1>
                                                <form action="inscribir_servlet" method="POST" class="form-group form-container"
						      onsubmit="event.preventDefault(); return inscribirEstudiante();
						      id="form3">
							<div class="form-group text-center">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">Carnet</th>
											<th scope="col">Nombre</th>
											<th scope="col">Nacimiento</th>
											<th scope="col">Fecha Registro</th>
										</tr>
									</thead>
									<tbody>
										<%
											ArrayList<Estudiante> estudiantes = EstudentController.obtenerEstudiantes();
											int cont = 0;
											for (Estudiante est : estudiantes) {
												out.print("<tr>");
												out.print("<th scope='row'>" + cont + "</th>");
												out.print("<td>" + est.carnet + "</td>");
												out.print("<td>" + est.nombre + "</td>");
												out.print("<td>" + est.fecha_nacimiento + "</td>");
												out.print("<td>" + est.fecha_registro + "</td>");
												out.print("</tr>");
												cont++;
											}
										%>
									</tbody>
								</table>
								<input type="submit" class="btn btn-inline text-center  button3" 
								       value="Inscribir" />
							</div>
                                                </form>
                                        </div>
				</div>
				<div class="col-md-5">
					<div class="card-body">
                                                <h1 class="text-center" id="inscr-title">Estudiantes Inscritos</h1>
                                                <form action="LoginServlet" method="POST" class="form-group form-container">
							<div class="form-group text-center">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">Carnet</th>
											<th scope="col">Nombre</th>
											<th scope="col">Nacimiento</th>
											<th scope="col">Fecha Registro</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
											<td>@mdo</td>
										</tr>
									</tbody>
								</table>
							</div>
						</form>
                                        </div>
				</div>
			</div>  
		</div>
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script>
                                                        function registrarUsuario() {
                                                            Swal.fire('Se ha guardaro el Usuario', '', 'success');
                                                            document.getElementById("form1").submit();
                                                        }

                                                        function registrarEstudiante() {
                                                            Swal.fire('Estudiante Registrado', '', 'success');
                                                            document.getElementById("form2").submit();

                                                        }

							function inscribirEstudiante(){
							    Swal.fire('Estudiante Inscrito', '', 'success');
                                                            document.getElementById("form3").submit();

							}


		</script>
	</body>
</html>
