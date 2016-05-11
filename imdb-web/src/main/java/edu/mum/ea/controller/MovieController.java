package edu.mum.ea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.mum.ea.service.MovieService;

@Controller
public class MovieController {
	@Autowired
	private MovieService movieService;
	
	@RequestMapping("/")
	public String home(ModelMap model) {
		model.addAttribute("moviesList", movieService.listMovie());
		return "home";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam("name") String name, Model model) {
		model.addAttribute("name", name);
		return "search";
	}
}
