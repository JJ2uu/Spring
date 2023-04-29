package com.multi.mvc03;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {
	
	@Autowired
	BbsDAO dao;

	@RequestMapping("json1")
	@ResponseBody // 요청을 받으면 return 데이터를 views를 사용하지않고 json으로 만들어서 요청하는 곳으로 다시 보냄
	public MemberVO json1() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		
		return bag; // {"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
	}
	
	@RequestMapping("json2")
	@ResponseBody // 요청을 받으면 return 데이터를 views를 사용하지않고 json으로 만들어서 요청하는 곳으로 다시 보냄
	public ArrayList<MemberVO> json2() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		
		MemberVO bag2 = new MemberVO();
		bag2.setId("root");
		bag2.setPw("1234");
		bag2.setName("hong");
		bag2.setTel("011");
		
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		list.add(bag);
		list.add(bag2);
		
		return list; // {"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
	}
	
	@RequestMapping("json3")
	@ResponseBody
	public BbsVO json3() {
		BbsVO bag = new BbsVO();
		bag.setNo(1);
		bag.setTitle("야호");
		bag.setContent("야호야호야호");
		bag.setWriter("hong");
		
		return bag;
	}
	
	@RequestMapping("json4")
	@ResponseBody
	public ArrayList<BbsVO> json4() {
		BbsVO bag = new BbsVO();
		bag.setNo(1);
		bag.setTitle("야호");
		bag.setContent("야호야호야호");
		bag.setWriter("hong");
		
		BbsVO bag2 = new BbsVO();
		bag2.setNo(1);
		bag2.setTitle("야호");
		bag2.setContent("야호야호야호");
		bag2.setWriter("hong");
		
		ArrayList<BbsVO> list = new ArrayList<BbsVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("bbs_one2")
	@ResponseBody
	public BbsVO bbs_one2(int no) {
		System.out.println("one 검색 요청됨");
		System.out.println(no);
		BbsVO bag = dao.one(no);
		System.out.println(bag);
		
		return bag;
	}
	
	@RequestMapping("list55")
	@ResponseBody
	public ArrayList<BbsVO> list55() {
		System.out.println("list검색 요청됨");
		ArrayList<BbsVO> list = dao.list();
		System.out.println(list);
		
		return list;
	}
}
