package com.multi.mvc02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

@Component
public class movieDAO {
	
	public movieVO one(String title) {
		ResultSet rs = null;
		movieVO bag2 = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공.");
			// 2. 오라클 11g에 연결해보기 (java --- oracle)
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password); // Connection객체로 가져온 값을 변수에 저장
			System.out.println("2. mySQL 연결 성공.");
			
			// 자바는 객체지향언어라 String에 넣은 문자열을 특정한 부품으로 인식하지 못함
			// 특정한 부품으로 인식하려면 그 부품으로 만들어주어야 한다.
			// SQL부품 ↓
			// 외래키(FK)설정이 되어있으면 정상적으로 DELETE가 되지 않음
			String sql = "select * from movie where title = ?"; // 먼저 스트링에 저장하고
			PreparedStatement ps = con.prepareStatement(sql); // SQL부품 PreparedStatment를 활용해 변수에 저장
			ps.setString(1, title);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (rs.next()) {
				System.out.println("검색 결과 있음");
				String id = rs.getString(1);
				String title2 = rs.getString(2);
				String genre = rs.getString(3);
				String location = rs.getString(4);
				String director = rs.getString(5);
				String img = rs.getString(6);
				
				bag2 = new movieVO();
				bag2.setId(id);
				bag2.setTitle(title2);
				bag2.setGenre(genre);
				bag2.setLocation(location);
				bag2.setDirector(director);
				bag2.setImg(img);
				ps.close();
			} else {
				System.out.println("검색 결과 없음");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bag2;
		
	}
	
	public ArrayList<movieVO> list() {
		ResultSet rs = null;
		ArrayList<movieVO> list = new ArrayList<>();
		
		movieVO bag = null;
		try {
			// 1.오라클 11g와 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");

			String sql = "select * from movie";
			PreparedStatement ps = con.prepareStatement(sql); //PreparedStatement
			//삭제!!!! ps.setString(1, id);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");
			
			rs = ps.executeQuery(); //select문 전송시  
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			while(rs.next()) { //검색결과가 있는지 여부는 rs.next() 
				String id = rs.getString(1);
				String title2 = rs.getString(2);
				String genre = rs.getString(3);
				String location = rs.getString(4);
				String director = rs.getString(5);
				String img = rs.getString(6);
				
				bag = new movieVO();
				bag.setId(id);
				bag.setTitle(title2);
				bag.setGenre(genre);
				bag.setLocation(location);
				bag.setDirector(director);
				bag.setImg(img);

				list.add(bag);
			}

			ps.close();
			rs.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public ArrayList<movieVO> list2(String genre) {
		ResultSet rs = null; //항목명 + 결과 데이터를 담고 있는 테이블 
		
		//가방들 넣어줄 큰 컨테이너 역할을 부품이 필요!
		//ArrayList<MemberVO> ==> MemberVO만 들어간 arraylist라는 의미
		ArrayList<movieVO> list = new ArrayList<>();
		
		movieVO bag = null;
		try {
			// 1.오라클 11g와 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");

			String sql = "select * from movie where genre = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, genre);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");
			
			rs = ps.executeQuery(); //select문 전송시  
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			while(rs.next()) { //검색결과가 있는지 여부는 rs.next() 
				String id = rs.getString(1);
				String title2 = rs.getString(2);
				String genre2 = rs.getString(3);
				String location = rs.getString(4);
				String director = rs.getString(5);
				String img = rs.getString(6);
				
				bag = new movieVO();
				bag.setId(id);
				bag.setTitle(title2);
				bag.setGenre(genre2);
				bag.setLocation(location);
				bag.setDirector(director);
				bag.setImg(img);

				list.add(bag);
			}

			ps.close();
			rs.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public ArrayList<movieVO> list3(String select, String word) {
		ResultSet rs = null; //항목명 + 결과 데이터를 담고 있는 테이블 
		
		//가방들 넣어줄 큰 컨테이너 역할을 부품이 필요!
		//ArrayList<MemberVO> ==> MemberVO만 들어간 arraylist라는 의미
		ArrayList<movieVO> list = new ArrayList<>();
		
		String sql = null;
		movieVO bag = null;
		try {
			// 1.오라클 11g와 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");
			
			if (select.equals("title")) {
				sql = "select * from movie where title like ?";	
			} else if (select.equals("genre")) {
				sql = "select * from movie where genre like ?";	
			} else {
				sql = "select * from movie where location like ?";	
			}
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, '%'+word+'%');
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");
			System.out.println(ps);
			
			rs = ps.executeQuery(); //select문 전송시  
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			//System.out.println(rs.next());
			while(rs.next()) { //검색결과가 있는지 여부는 rs.next() 
				String id = rs.getString(1);
				String title2 = rs.getString(2);
				String genre2 = rs.getString(3);
				String location = rs.getString(4);
				String director = rs.getString(5);
				String img = rs.getString(6);
				
				System.out.println(
							id + ", " +
							title2 + ", " +
							genre2 + ", " +
							location + ", " +
							director + ", " + img);
				
				bag = new movieVO();
				bag.setId(id);
				bag.setTitle(title2);
				bag.setGenre(genre2);
				bag.setLocation(location);
				bag.setDirector(director);
				bag.setImg(img);

				list.add(bag);
			}

			ps.close();
			rs.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
