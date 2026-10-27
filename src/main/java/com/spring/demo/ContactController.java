package com.spring.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController {

	
	@GetMapping("/contact")
	public  String disp_contact()
	{
		return "contact.jsp";
	}
}
