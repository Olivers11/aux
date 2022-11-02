package controllers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Estudiante;

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
			String query1 = "update COLA_ESTUDIANTE SET ESTADO=1 WHERE CARNET='" + c + "'";
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
			query1 += "('" + c + "', SYSDATE)";
			stmt.executeUpdate(query1);
		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public static ArrayList<Estudiante> obtenerEstudiantes() {
		ArrayList<Estudiante> pr = new ArrayList<Estudiante>();
		try {
			Connection conn = createConnection();
			if (conn == null) {
				System.out.println("Problemas de conexion");
				return null;
			}
			Statement s;
			s = conn.createStatement();
			String query="select * from estudiante inner join cola_estudiantes ON estudiante.carnet = cola_estudiantes.carnet where cola_estudiantes.estado=0 ORDER BY FECHA_REGISTRO DESC";
			ResultSet rs = s.executeQuery(query);
			while (rs.next()) {
				String carnet = rs.getString(1);
				String n = rs.getString(2);
				java.sql.Date f1 = rs.getDate(3);
				java.sql.Date f2 = rs.getDate(4);
				Estudiante e = new Estudiante(carnet, n, f1, f2);
				pr.add(e);
			}

			return pr;

		} catch (SQLException ex) {
			Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}



}
