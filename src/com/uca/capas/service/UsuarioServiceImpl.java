package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Usuario;
import com.uca.capas.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	
	@Autowired
	UsuarioRepository usuarioRepository;
	
	@Override
	public List<Usuario> findAll() {
		// TODO Auto-generated method stub
		return usuarioRepository.findAll();
	}

	@Override
	public Usuario findUsuarioyContrase�a(String user, String pass) {
		// TODO Auto-generated method stub
		
		return usuarioRepository.findUsuarioyContrase�a(user, pass);
	}
	
}
