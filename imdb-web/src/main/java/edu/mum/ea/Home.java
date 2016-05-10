package edu.mum.ea;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Home {
	@RequestMapping("/")
	public String view() {
		return "home";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam("name") String name, Model model) {
		model.addAttribute("name", name);
		return "search";
	}
}
