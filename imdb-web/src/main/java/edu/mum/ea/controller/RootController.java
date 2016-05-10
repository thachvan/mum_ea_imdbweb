package edu.mum.ea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RootController {
	@Autowired
	private MovieService movieService;
	
	@RequestMapping("/")
	public String view(ModelMap model) {
		return "home";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam("name") String name, Model model) {
		model.addAttribute("name", name);
		return "search";
	}
}
