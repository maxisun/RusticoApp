package com.uca.capas.controller;

import java.util.List;

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
import com.uca.capas.service.SucursalService;
import com.uca.capas.service.UsuarioService;

@Controller
public class LoginController {

	@Autowired
	UsuarioService usuarioService;
	
	@Autowired
	SucursalService sucursalService;
	
	@RequestMapping("/")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginDTO", new LoginDTO());
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	@ResponseBody
	public String main(@RequestParam(name = "username") String user, @RequestParam(name = "password") String pass,
			HttpServletResponse response){
		
		if(usuarioService.findUsuarioyContrase�a(user, pass)==null) {
			response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			return "not found";
		} else {
			response.setStatus(HttpServletResponse.SC_OK);
			return "ok";
		}
	}
	
	/*@RequestMapping(value = "/login",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView main(@Valid @ModelAttribute LoginDTO loginDTO, BindingResult result){
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors() || usuarioService.findUsuarioyContrase�a(loginDTO.username, loginDTO.password)==null) {
			mav.setViewName("login");
		} else {
			mav.addObject("sucursales", sucursalService.findAll());
			mav.setViewName("sucursales/main");
		}
		return mav;
	}*/
}
