package com.multi.mvc06;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my; //mybatis 싱글톤 객체

	public int insert(MemberVO bag) {
		int result = my.insert("member.create", bag);
							// namespace.id >> memberMapper에 다 있음
		return result;
	}
	
	public int update(MemberVO bag) {
		int result = my.update("member.up", bag);
		return result;
	}
	
	public int delete(String id) {
		int result = my.delete("member.del", id);
		return result;
	}
	
	/*
	 * public MemberVO login(MemberVO bag) { MemberVO bag2 =
	 * my.selectOne("member.login", bag); return bag2; }
	 */
	
	public MemberVO one(String id) {
		MemberVO bag = my.selectOne("member.one", id);
		return bag;
	}
	
	public List<MemberVO> list() {
		List<MemberVO> list = my.selectList("member.all");
		System.out.println(list.size());
		return list;
	}
}



