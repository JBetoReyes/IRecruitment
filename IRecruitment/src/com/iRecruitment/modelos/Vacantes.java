package com.iRecruitment.modelos;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Vacantes
 *
 */
@NamedQuery(name="getAllFlights",query="SELECT vac from Vacantes vac")
@Entity
public class Vacantes implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public Vacantes() {
		super();
	}
	
	@Id
	private Integer id;
	
	private String puesto;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPuesto() {
		return puesto;
	}

	public void setPuesto(String puesto) {
		this.puesto = puesto;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public Integer getCandidatos() {
		return candidatos;
	}

	public void setCandidatos(Integer candidatos) {
		this.candidatos = candidatos;
	}

	public Integer getVacantes() {
		return Vacantes;
	}

	public void setVacantes(Integer vacantes) {
		Vacantes = vacantes;
	}

	@Enumerated(EnumType.STRING)
	private Status status;
	
	private Integer candidatos;
	
	private Integer Vacantes;
   
}
