package com.multi.mvc05;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

//테이블 하나당 DAO하나! ==> CUD를 완성!!
@Component
public class BookDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int delete(String name) {
		int result = my.delete("book.del", name);
		return result;
	}

	public int update(BookVO bag) {
		int result = my.update("book.up", bag);
		return result;
	}

	public int insert(BookVO bag) {
		int result = my.insert("book.create", bag);
		return result;
	}
	
	public List<BookVO> list() {
		   List<BookVO> list = my.selectList("book.all");
		   return list;
		}
	
	public BookVO one(String name) {
		   BookVO bag = my.selectOne("book.one", name);
		   return bag;
		}

}