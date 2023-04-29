package com.multi.mvc03;

import java.util.ArrayList;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController2 {

	@Autowired
	MemberDAO dao;
	
	@RequestMapping("oneSearch")
	@ResponseBody
	public MemberVO oneSearch(String id) {
		System.out.println(id + "검색됨");
		MemberVO bag = dao.one(id);
		System.out.println(bag);
		return bag;
	}
	
	@RequestMapping("listSearch")
	@ResponseBody
	public ArrayList<MemberVO> member_list() {
		ArrayList<MemberVO> list = dao.list();
		return list;
	}
	
	@RequestMapping("map2")
	@ResponseBody
	public MapVO json1() {
		MapVO bag = new MapVO();
		bag.setLat(37.51);
		bag.setLon(127.06);
		bag.setLoc("코엑스");
		
		System.out.println(bag);
		return bag;
	}
	
	@RequestMapping("chart")
	@ResponseBody
	public ArrayList<ChartVO> json2() {
		
		ArrayList<ChartVO> list = new ArrayList<ChartVO>();
		
		ChartVO bag = new ChartVO();
		bag.setDoing("잠");
		bag.setTime(8);
		
		ChartVO bag2 = new ChartVO();
		bag2.setDoing("공부");
		bag2.setTime(9);
		
		ChartVO bag3 = new ChartVO();
		bag3.setDoing("휴식");
		bag3.setTime(4);
		
		ChartVO bag4 = new ChartVO();
		bag4.setDoing("TV");
		bag4.setTime(3);
		
		list.add(bag);
		list.add(bag2);
		list.add(bag3);
		list.add(bag4);
		
		return list;
	}
	
}
