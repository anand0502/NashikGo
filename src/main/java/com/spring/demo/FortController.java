package com.spring.demo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class FortController {

	
	private final List<FortDTO> forts = List.of(
	        new FortDTO("harihar", "Harihar Fort", "/images/harihar_fort.jpg",
	            "Famous for its vertical staircase and scenic views.",
	            "6:00 AM - 6:00 PM", "₹20", "Trimbakeshwar, Nashik",
	            "https://www.google.com/maps/embed?..."),
	        
	        new FortDTO("bramhagiri", "Bramhagiri Fort", "/images/bramhagiri.jpg",
	            "Mythological fort near the origin of the Godavari river.",
	            "6:00 AM - 5:30 PM", "Free", "Trimbakeshwar Range",
	            "https://www.google.com/maps/embed?...")

	        // Add more forts here
	    );

	    @GetMapping("/forts")
	    public String listForts(Model model) {
	        model.addAttribute("forts", forts);
	        return "forts.jsp";
	    }

	    @GetMapping("/fort/{id}")
	    public String showFort(@PathVariable String id, Model model) {
	        FortDTO selected = forts.stream()
	            .filter(f -> f.getId().equals(id))
	            .findFirst()
	            .orElse(null);
	        model.addAttribute("fort", selected);
	        return "forts.jsp";
	    }
	
}
