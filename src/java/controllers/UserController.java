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
			ResultSet rs = s.executeQuery("select * from USUARIO");
			System.out.println(rs);
			while (rs.next()) {
				String n = rs.getString(1);
				System.out.println("nombr: " + n);
				String c = rs.getString(2);
				if (n.equalsIgnoreCase(nombre) && contra.equalsIgnoreCase(c)) {
					return true;
				}
			}
			System.out.println("No habia nada ");
			return false;

		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

	public static void crearUsuario(String n, String c) {

		try {
			Connection conn = createConnection();
			Statement stmt;
			stmt = (Statement) conn.createStatement();
			String query1 = "INSERT INTO USUARIO(NOMBRE, CONTRA)values('"+n+"', '"+c+"')";
			stmt.executeUpdate(query1);
		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}
