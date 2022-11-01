<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.connectionDB"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Pagina de Prueba lol</title>
        </head>
        <body>
                <%
                    Connection conn = connectionDB.createConnection();
                    if(conn != null){
                    	out.println("<p>conexion realizada</p>");
                    }
                    else{
                    	out.println("<p>error con la conexion</p>");
                    }
                %>
        </body>
</html>
