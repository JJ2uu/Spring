package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2.multi")
	public void bbs_insert(BbsVO bag) {
		System.out.println("insert 요청됨");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("delete2.multi")
	public void bbs_delete(BbsVO bag) {
		System.out.println("delete 요청됨");
		System.out.println(bag);
		System.out.println(dao);
		dao.delete(bag);
	}
	
	@RequestMapping("update2.multi")
	public void bbs_update(BbsVO bag) {
		System.out.println("update 요청됨");
		System.out.println(bag);
		System.out.println(dao);
		dao.update(bag);
	}
	
	@RequestMapping("bbs_one")
	public void bbs_one(int no, Model model) {
		System.out.println("one 검색 요청됨");
		BbsVO bag = dao.one(no);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("bbs_list")
	public void bbs_list(Model model) {
		System.out.println("list검색 요청됨");
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
}
