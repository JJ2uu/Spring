package com.multi.mvc04;

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
	
	public int delete(MemberVO bag) {
		int result = my.delete("member.del", bag);
		return result;
	}
	
	public MemberVO login(MemberVO bag) {
		MemberVO bag2 = my.selectOne("member.login", bag);
		return bag2;
	}
}



