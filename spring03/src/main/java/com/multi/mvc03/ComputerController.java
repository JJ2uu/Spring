package com.multi.mvc03;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComputerController {
	
	@RequestMapping("computer")
	public void com(ComputerVO bag, Model model) {
		System.out.println(bag);
		bag.setSum(bag.getPrice() + bag.getPrice2());
		model.addAttribute("bag", bag);
	}
}
