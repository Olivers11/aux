
package models;

import java.sql.Date;

public class Inscripcion_Estudiante {
	public String carnet;
	public Date fecha_inscripcion;
	public Inscripcion_Estudiante(String carnet, Date fecha){
		this.carnet = carnet;
		this.fecha_inscripcion = fecha;
	}
}
