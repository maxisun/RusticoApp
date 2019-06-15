package com.uca.capas.controller;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.dto.LoginDTO;
import com.uca.capas.service.EmpleadoService;
import com.uca.capas.service.SucursalService;

@Controller
public class SucursalController {

	@Autowired
	SucursalService sucursalService;
	
	@Autowired
	EmpleadoService empleadoService;
	
	
	@RequestMapping(value = "/sucursal/eliminar", method = RequestMethod.POST)
	public ModelAndView eliminar(@RequestParam(name = "valorId") Integer id){
		ModelAndView mav = new ModelAndView();
		sucursalService.eliminarSucursal(id);
		mav.addObject("sucursales", sucursalService.findAll());
		mav.setViewName("sucursales/main");
		return mav;
	}
	
	@RequestMapping(value = "/sucursal/main", method = RequestMethod.GET)
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("sucursales", sucursalService.findAll());
		mav.setViewName("sucursales/main");
		return mav;
	}
	
	@RequestMapping(value = "/sucursal/editar", method = RequestMethod.POST)
	public ModelAndView editar(@RequestParam(name = "valorId") Integer id){
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}

}
