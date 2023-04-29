package com.multi.mvc03;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;
	
	@RequestMapping("insert2.multi")
	public void bbs_insert(BbsVO bag) {
		System.out.println("insert 요청됨");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("bbs_delete")
	public void bbs_delete(int no) {
		System.out.println("delete 요청됨");
		dao.delete(no);
	}
	
	@RequestMapping("bbs_update")
	public void bbs_update(BbsVO bag) {
		System.out.println("update 요청됨");
		System.out.println(bag);
		System.out.println(dao);
		dao.update1(bag);
	}
	
	@RequestMapping("bbs_one")
	public void bbs_one(int no, Model model) {
		System.out.println("one 검색 요청됨");
		BbsVO bag = dao.one(no);
		ArrayList<ReplyVO> list = dao2.list(no); // bbs 상세페이지 안에 reply list도 함께 가져오게끔
		model.addAttribute("bag", bag);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("bbs_list")
	public void bbs_list(Model model) {
		System.out.println("list검색 요청됨");
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list5")
	public void list5(Model model) {
		System.out.println("list검색 요청됨");
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
}
