package com.uca.capas.controller;

import java.sql.Time;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.domain.Usuario;
import com.uca.capas.service.SucursalService;
import com.uca.capas.service.UsuarioService;

@Controller
public class LoginController {

	@Autowired
	UsuarioService usuarioService;
	
	@Autowired
	SucursalService sucursalService;
	
	@RequestMapping("/")
	public ModelAndView findDetalied(){
		ModelAndView mav = new ModelAndView();
		List<Sucursal> sucursal = sucursalService.findAll();
		mav.addObject("sucursal", sucursal);
		mav.setViewName("login");
		return mav;
	}
}
