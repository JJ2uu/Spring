package com.multi.mvc700;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	@Autowired
	FoodDAO dao;
	
	@RequestMapping("food_list")
	public void food_list(Model model) {
		List<FoodVO> list =  dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("food_insert")
	public void food_insert(FoodVO bag) {
		System.out.println(bag);
		dao.insert(bag);
	}
	
	@RequestMapping("food_delete")
	public void food_delete(int no) {
		System.out.println(no);
		dao.delete(no);
	}
	
	@RequestMapping("food_update")
	public void food_update(FoodVO bag) {
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("food_one")
	public void one(int no, Model model) {
		System.out.println(no);
		FoodVO bag = dao.one(no);
		model.addAttribute("bag", bag);
	}

}
