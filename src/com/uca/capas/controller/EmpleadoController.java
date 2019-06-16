package com.uca.capas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.service.EmpleadoService;
import com.uca.capas.service.SucursalService;

@Controller
public class EmpleadoController {

	@Autowired
	SucursalService sucursalService;
	
	@Autowired
	EmpleadoService empleadoService;
	
	@RequestMapping(value = "/empleado/main", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView main(@RequestParam(name = "id") Integer id){
		ModelAndView mav = new ModelAndView();
		mav.addObject("sucursal", sucursalService.findOne(id));
		mav.setViewName("empleados/main");
		return mav;
	}
	
	@RequestMapping(value = "/empleado/eliminar", method = RequestMethod.POST)
	public ModelAndView eliminarEmpleado(@RequestParam(name = "empId",  required = true) Integer empId, @RequestParam(name = "sucId",  required = true) Integer sucId){
		ModelAndView mav = new ModelAndView();
		empleadoService.eliminarEmpleado(empId);
		mav.addObject("sucursal", sucursalService.findOne(sucId));
		mav.setViewName("empleados/main");
		return mav;
	}
}
