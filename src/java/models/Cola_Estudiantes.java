
package models;

import java.sql.Date;


public class Cola_Estudiantes {
	public String carnet;
	public Date fecha_nacimiento;
	public int estado;

	public Cola_Estudiantes(String carnet, Date fecha_nacimiento, int estado) {
		this.carnet = carnet;
		this.fecha_nacimiento = fecha_nacimiento;
		this.estado = estado;
	}
}
