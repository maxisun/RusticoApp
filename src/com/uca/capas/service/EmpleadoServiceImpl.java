package com.uca.capas.service;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uca.capas.domain.Empleado;
import com.uca.capas.repository.EmpleadoRepository;

@Service
public class EmpleadoServiceImpl implements EmpleadoService{
	
	@Autowired
	EmpleadoRepository empleadoRepository;
	
	@Autowired
	private EntityManager entitymanager;

	@Override
	public List<Empleado> findAll() {
		// TODO Auto-generated method stub
		return empleadoRepository.findAll();
	}

	@Override
	@Transactional
	public void eliminarEmpleado(Integer id) {
		// TODO Auto-generated method stub
		Empleado empleado = empleadoRepository.getOne(id);
		entitymanager.remove(empleado);
		entitymanager.flush();
	}

}
