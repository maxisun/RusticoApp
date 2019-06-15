package com.uca.capas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Sucursal;

@Repository
public interface SucursalRepository extends JpaRepository<Sucursal,Integer>{

	//@Query(value = "SELECT * FROM USERS WHERE EMAIL_ADDRESS = ?0", nativeQuery = true)
	public List<Sucursal> findAll();
}
