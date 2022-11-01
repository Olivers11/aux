<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                                <h1 class="text-center user-title">Registrar Usuario</h1>
                                                <form action="LoginServlet" method="POST" class="form-group form-container">
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
                                                <form action="LoginServlet" method="POST" class="form-group form-container">
                                                        <div class="form-group">
                                                                <input autocomplete="off" type="text" id="nombre" name="nombre"
								       class="form-control" placeholder="Carnet" />
                                                        </div>
							<div class="form-group">
								<input type="text" autocomplete="off" class="form-control" 
								       id="contra" placeholder="Nombre" name="contra"/>
							</div>                                        

							<div class="form-group">
								<input type="date" autocomplete="off" class="form-control" 
								       id="name" placeholder="Fecha Nacimiento" name="contra"/>
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
				<div class="col-md-5">
					<div class="card-body">
                                                <h1 class="text-center " id="inscr-title">Inscribir Estudiante</h1>
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
								<input type="submit" class="btn btn-inline text-center  button3" 
								       value="Inscribir" />
							</div>
                                                </form>
                                        </div>
				</div>
				<div class="col-md-5">
					<div class="card-body">
                                                <h1 class="text-center est-title">Estudiantes Inscritos</h1>
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
								<input type="submit" class="btn btn-inline text-center  button4" 
								       value="Inscribir" />
							</div>
						</form>
                                        </div>
				</div>
			</div>  
		</div>
	</body>
</html>
