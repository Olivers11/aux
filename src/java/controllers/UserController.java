package controllers;

import static controllers.connectionDB.createConnection;
import java.sql.Connection;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserController extends connectionDB {

	public static boolean usuarioExiste(String nombre, String contra) {
		try {
			Connection conn = createConnection();
			if (conn == null) {
				System.out.println("Problemas de conexion");
				return false;
			}
			Statement s;
			s = conn.createStatement();
			ResultSet rs = s.executeQuery("select * from USUARIO WHERE NOMBRE='"+nombre+"' AND CONTRA='"+contra+"'");
			return rs.next();

		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

}
