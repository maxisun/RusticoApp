package com.uca.capas.service;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.repository.SucursalRepository;

@Service
public class SucursalServiceImpl implements SucursalService{
	
	@Autowired
	private SucursalRepository sucursalRepository;
	
	@Autowired
	private EntityManager entitymanager;

	@Override
	public List<Sucursal> findAll() {
		// TODO Auto-generated method stub
		return sucursalRepository.findAll();
	}

	@Override
	@Transactional
	public void eliminarSucursal(Integer id) {
		// TODO Auto-generated method stub
		Sucursal sucursal =  sucursalRepository.getOne(id);    //sucursalRepository.find(id);
		entitymanager.remove(sucursal);
		entitymanager.flush();
	}

	@Override
	public Sucursal findOne(Integer id) {
		// TODO Auto-generated method stub
		return sucursalRepository.getOne(id);
	}

}
