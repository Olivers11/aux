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

	public Estudiante(String carnet, String nombre, Date fecha_nacimiento, Date fecha_registro) {
		this.carnet = carnet;
		this.nombre = nombre;
		this.fecha_nacimiento = fecha_nacimiento;
		this.fecha_registro = fecha_registro;
	}

	
}
