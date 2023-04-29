package com.multi.mvc02;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	@RequestMapping("food")
	public String food(FoodVO bag) {
		String like = bag.getLike();
		String dislike = bag.getDislike();
		
		if (like.equals("라면")) {
			return "like";
		} else if (dislike.equals("커피")) {
			return "dislike";
		} else {
			return "redirect:food.jsp";
		}
	}
	
}
