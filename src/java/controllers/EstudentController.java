package controllers;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EstudentController extends connectionDB {
	public static void crearEstudiante(String n, String c, String time) {

		try {
			Connection conn = createConnection();
			Statement stmt;
			stmt = (Statement) conn.createStatement();
			String query1 = "INSERT INTO ESTUDIANTE(CARNET, NOMBRE, FECHA_NACIMIENTO, FECHA_REGISTRO)values";
			query1 += "('"+c+"', '"+n+"',SYSDATE,SYSDATE)";
			stmt.executeUpdate(query1);
		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}