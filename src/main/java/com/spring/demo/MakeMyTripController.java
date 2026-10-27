package com.spring.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MakeMyTripController {

	@GetMapping("/makemytrip")
	public String disp()
	{
		return"makemytrip.jsp";
		
	}
}
