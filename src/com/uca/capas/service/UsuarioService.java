package com.uca.capas.service;

import java.util.List;

import com.uca.capas.domain.Usuario;

public interface UsuarioService {

	public List<Usuario> findAll();
	
	public Usuario findUsuarioyContrase�a(String user, String pass);
}
