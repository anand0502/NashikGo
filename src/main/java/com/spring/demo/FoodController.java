package com.spring.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FoodController {

  @GetMapping("/food")
  public String dis()
  {
	  return"food.jsp";
  }
	
}
