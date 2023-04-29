package com.multi.mvc03;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

	@RequestMapping("movie")
	public void movie(MovieVO bag, Model model) {
		System.out.println(bag);
		bag.setSum(bag.getPrice() * bag.getCount());
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("fruit")
	public void fruit(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("사과");
		list.add("딸기");
		list.add("참외");
		list.add("포도");
		model.addAttribute("list", list);
	}
	
	@RequestMapping("tour")
	public void tour(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("도쿄");
		list.add("오사카");
		list.add("교토");
		list.add("후쿠오카");
		model.addAttribute("list", list);
	}
	
}
