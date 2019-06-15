package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(schema= "public", name = "usuario")
public class Usuario {

	@Id
	@GeneratedValue(generator = "usuario_idusuario_seq", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "usuario_idusuario_seq", sequenceName = "public.usuario_idusuario_seq", allocationSize = 1)
	@Column(name = "IdUsuario")
	private Integer idUsuario;
	
	@Column(name = "nombreUsuario")
	private String nombreUsuario;
	
	@Column(name = "claveUsuario")
	private String claveUsuario;

	public Usuario(Integer idUsuario, String nombreUsuario, String claveUsuario) {
		super();
		this.idUsuario = idUsuario;
		this.nombreUsuario = nombreUsuario;
		this.claveUsuario = claveUsuario;
	}

	public Usuario() {
		super();
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public String getClaveUsuario() {
		return claveUsuario;
	}

	public void setClaveUsuario(String claveUsuario) {
		this.claveUsuario = claveUsuario;
	}

	
	
	
}
