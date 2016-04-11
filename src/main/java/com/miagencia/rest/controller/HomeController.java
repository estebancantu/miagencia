package com.miagencia.rest.controller;

import java.io.IOException;


// TODO este controller tiene que volar
// TODO Hay 3 tipos de operaciones que faltan:
//				Alta de un vehiculo: Tambien puede venir asociado con el alta de un cliente.
//				Venta de un vehiculo: va asociado con el vendedor y el comprador.
//				Reserva de un vehiculo:
//				Listado de autos: solo datos basicos del auto para la lista principal
//				Detalle de auto: todos los datos de un auto
//				Ver si hay que hacer un controller para imagenes o como es
//				Lista de provincias y ciudades

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("home");
	}
}
