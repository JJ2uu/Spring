package com.multi.mvc04;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //스프링에서 제어하는 역할로 등록! 
public class MemberController {

	@Autowired // 자동으로 BbsDAO에 있는 싱글톤 DAO 주소를 가져와서 dao에 넣어줌
	MemberDAO dao; //전역변수 선언(global)

	@RequestMapping("insert")
	public void insert(MemberVO bag) {
		System.out.println("insert 요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update")
	public void update(MemberVO bag) {
		System.out.println("update 요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("delete")
	public void delete(MemberVO bag) {
		System.out.println("delete 요청됨");
		System.out.println(bag);
		dao.delete(bag);
	}
	
	@RequestMapping("login")
	public String login(MemberVO bag, Model model) {
		System.out.println("login요청됨");
		System.out.println(bag);
		MemberVO bag2 = dao.login(bag);
		model.addAttribute("bag2", bag2);
		return "one";
	}
//	
//	
//
//	@RequestMapping("member_list")
//	public void member_list(Model model) {
//		// Model은 컨트롤러의 list를 views/member_list.jsp까지만 전달할 수 있는 객체
//		ArrayList<MemberVO> list = dao.list();
//		model.addAttribute("list", list);
//	}
	
	
	
	
	
	
	
}