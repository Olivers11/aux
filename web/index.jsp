<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.connectionDB"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Pagina de Prueba lol</title>
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
                                <div class="col-md-5 mx-auto">
                                        <div class="card-body">
                                                <h1 class="text-center">Inicio de Sesion</h1>
                                                <form action="" method="POST" class="form-group form-container">
                                                        <div class="form-group">
                                                                <input autocomplete="off" type="text" id="nombre" 
								       class="form-control" placeholder="Usuario" />
                                                        </div>
                                                </form>
                                                <div class="form-group">
                                                        <input type="password" autocomplete="off" class="form-control" 
							       id="contra" placeholder="Contraseña" />
                                                </div>                                        
						<div class="form-group text-center">

							<input type="submit" class="btn btn-inline text-center  button" 
							       value="Ingresar" />
						</div>
                                        </div>
                                </div>
                        </div>
                </div>

        </body>
</html>
