package com.multi.mvc06;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //스프링에서 제어하는 역할로 등록! 
public class MemberController {

	@Autowired // 자동으로 BbsDAO에 있는 싱글톤 DAO 주소를 가져와서 dao에 넣어줌
	MemberDAO dao; //전역변수 선언(global)

	@RequestMapping("member_insert")
	public void insert(MemberVO bag) {
		System.out.println("insert 요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("member_update")
	public void update(MemberVO bag) {
		System.out.println("update 요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("member_delete")
	public void delete(String id) {
		System.out.println("delete 요청됨");
		System.out.println(id);
		dao.delete(id);
	}
	
	@RequestMapping("member_one")
	public void one(String id, Model model) {
		System.out.println("검색 요청됨");
		MemberVO bag = dao.one(id);
		System.out.println(bag);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("member_list")
	public void list(Model model) {
		List<MemberVO> list = dao.list();
		model.addAttribute("list", list);
	}

	
	
	
	
	
	
	
}