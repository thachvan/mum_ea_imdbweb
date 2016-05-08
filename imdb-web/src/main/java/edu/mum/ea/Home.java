package edu.mum.ea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Home {
	@RequestMapping("/")
	public String view() {
		return "home";
	}
}
