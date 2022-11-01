package models;

import java.sql.Date;


public class Estudiante {
	public String carnet;
	public String nombre;
	public Date fecha_nacimiento;
	public Date fecha_registro;
	public Estudiante(String carnet, String nombre){
		this.carnet = carnet;
		this.nombre = nombre;
	}
}
