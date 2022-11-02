
package models;

import java.sql.Date;


public class Cola_Estudiantes {
	public String carnet;
	public Date fecha_adicion;
	public int estado;

	public Cola_Estudiantes(String carnet, Date fecha_adicion, int estado) {
		this.carnet = carnet;
		this.fecha_adicion = fecha_adicion;
		this.estado = estado;
	}
}
