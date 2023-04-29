package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@Autowired
	movieDAO dao;
	
	@RequestMapping("movie_list")
	public void movie_list(Model model) {
		ArrayList<movieVO> list = dao.list();
		System.out.println(list.size());
		model.addAttribute("list", list);
	}
	
	@RequestMapping("genre_list")
	public void list2(String genre, Model model) {
		ArrayList<movieVO> list2 = dao.list2(genre);
		model.addAttribute("list2", list2);
	}
	
	@RequestMapping("movie_one")
	public void one(String title, Model model) {
		movieVO bag = dao.one(title);
		System.out.println(bag);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("search_list")
	public void movie_list2(String select, String word, Model model) {
		System.out.println(select + ", " + word);
		ArrayList<movieVO> list3 = dao.list3(select, word);
		model.addAttribute("list3", list3);
	}
}
