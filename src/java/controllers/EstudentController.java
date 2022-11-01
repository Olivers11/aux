package controllers;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EstudentController extends connectionDB {

	public static void crearEstudiante(String n, String c, String time) {

		try {
			Connection conn = createConnection();
			Statement stmt;
			stmt = (Statement) conn.createStatement();
			String query1 = "INSERT INTO ESTUDIANTE(CARNET, NOMBRE, FECHA_NACIMIENTO, FECHA_REGISTRO)values";
			query1 += "('" + c + "', '" + n + "',TO_DATE('" + time + "', 'yyyy/mm/dd'),SYSDATE)";
			stmt.executeUpdate(query1);

		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public static void AgregarACola(String c) {

		try {
			Connection conn = createConnection();
			Statement stmt;
			stmt = (Statement) conn.createStatement();
			String query1 = "insert into COLA_ESTUDIANTES(CARNET, FECHA_ADICION, ESTADO)values";
			query1 += "('" + c + "', SYSDATE, '" + 0 + "')";
			stmt.executeUpdate(query1);

		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public static void QuitarDeCola(String c) {

		try {
			Connection conn = createConnection();
			Statement stmt;
			stmt = (Statement) conn.createStatement();
			String query1 = "update COLA_ESTUDIANTE SET ESTADO=0 WHERE CARNET='" + c + "'";
			stmt.executeUpdate(query1);

		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public static void InscribirEstudiante(String c) {
		try {
			Connection conn = createConnection();
			Statement stmt;
			stmt = (Statement) conn.createStatement();
			String query1 = "INSERT INTO INSCRIPCION_ESTUDIANTES(CARNET, FECHA_ADICION) values";
			query1 += "('"+c+"', SYSDATE)";
			stmt.executeUpdate(query1);
		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}
