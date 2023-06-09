package com.multi.mvc02;

import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Locale;

//테이블 하나당 DAO하나! ==> CUD를 완성!!
@Component
public class BookDAO {
		public void delete(String name) {
		try {
			// 1. MySQL 8.0과 연결 할 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. MySQL과 자바 연결할 부품 설정 성공.");

			// 2. MySQL 8.0에 연결해보자. (Java <-> MySQL)
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password); // Connection
			// String data = JOptionPane.showInputDialog("이름입력"); //String, 임아무개
			System.out.println("2. MySQL 연결 성공.");

			String sql = "delete from book where name = ? ";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setString(1, name);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			ps.executeUpdate();
			System.out.println("4. SQL문 오라클로 보내기 성공.");

			// System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void update(BookVO bag) {
		try {
			// 1. MySQL 8.0과 연결 할 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. MySQL과 자바 연결할 부품 설정 성공.");

			// 2. MySQL 8.0에 연결해보자. (Java <-> MySQL)
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password); // Connection
			// String data = JOptionPane.showInputDialog("이름입력"); //String, 임아무개
			System.out.println("2. MySQL 연결 성공.");

			String sql = "update book set img = ? where name = ? ";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setString(1, bag.getImg());
			ps.setString(2, bag.getName());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4. SQL문 오라클로 보내기 성공.");

			// System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// public void add2() {
	public void insert(BookVO bag) {

		try {
			// 1. MySQL 8.0과 연결 할 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. MySQL과 자바 연결할 부품 설정 성공.");

			// 2. MySQL 8.0에 연결해보자. (Java <-> MySQL)
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password); // Connection
			// String data = JOptionPane.showInputDialog("이름입력"); //String, 임아무개
			System.out.println("2. MySQL 연결 성공.");

			String sql = "insert into book values (null, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setString(1, bag.getName());
			ps.setString(2, bag.getUrl());
			ps.setString(3, bag.getImg());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			ps.executeUpdate();
			System.out.println("4. SQL문 오라클로 보내기 성공.");

			// System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public ArrayList<BookVO> list() {
		   ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블

		   // 가방들 넣어줄 큰 컨테이너 역할을 부품이 필요!
		   // ArrayList<MemberVO> ==> MemberVO만 들어간 arraylist라는 의미
		   ArrayList<BookVO> list = new ArrayList<>();

		   BookVO bag = null;
		   try {
		      Class.forName("com.mysql.cj.jdbc.Driver");
		      System.out.println("1.MySQL과 자바 연결할 부품 설정 성공.");
		      Locale.setDefault(Locale.US); // 맥 locale에러나신 분들만!!!

		      String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
		      String user = "root";
		      String password = "1234";
		      Connection con = DriverManager.getConnection(url, user, password); // Connection
		      // String data = JOptionPane.showInputDialog("이름입력"); //String, 임아무개
		      // 컨트롤 + 쉬프트 + f : 코드 자동 정리!

		      String sql = "select * from book";
		      PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
		      // 삭제!!!! ps.setString(1, id);
		      System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

		      rs = ps.executeQuery(); // select문 전송시
		      System.out.println("4. SQL문 오라클로 보내기 성공.");
		      while (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
		         // true이면 있다라는 의미, false이면 없다라는 의미
		         // 1. 검색결과가 있으면,
		         System.out.println("검색결과 있음. 성공.");
		         int id2 = rs.getInt(1);
		         String name2 = rs.getString(2);
		         String url2 = rs.getString(3);
		         String img2 = rs.getString(4);
		         // 검색결과를 검색화면 UI부분을 주어야 함.
		         bag = new BookVO();
		         bag.setId(id2);
		         bag.setName(name2);
		         bag.setUrl(url2);
		         bag.setImg(img2);
		         

		         // 4. list에 bag을 추가해주자.
		         list.add(bag);
		      }
		      // System.out.println(result);
		      ps.close();
		      rs.close();
		      con.close();
		   } catch (Exception e) {
		      e.printStackTrace();
		   }
		   // return id, pw, name, tel은 XXXXX!
		   // return 뒤에는 반드시 여러 데이터를 묶어서 리턴해주어야 함.
		   // 검색결과가 있을 때는 bag에 데이터가 들어있음.
		   // 검색결과가 없을 때는 bag에 무엇이 들어있나? null
		   return list;

		}
	
	public BookVO one(String name) {
		   ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블
		   BookVO bag = null;
		   try {
		      // 1. MySQL 8.0과 연결 할 부품 설정
		      Class.forName("com.mysql.cj.jdbc.Driver");
		      System.out.println("1. MySQL과 자바 연결할 부품 설정 성공.");
		      Locale.setDefault(Locale.US); // 맥 locale에러나신 분들만!!!

		      // 2. MySQL 8.0에 연결해보자. (Java <-> MySQL)
		      String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
		      String user = "root";
		      String password = "1234";
		      Connection con = DriverManager.getConnection(url, user, password); // Connection
		      // String data = JOptionPane.showInputDialog("이름입력"); //String, 임아무개
		      System.out.println("2. MySQL 연결 성공.");

		      String sql = "select * from book where NAME = ? ";
		      PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
		      ps.setString(1, name);
		      System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

		      rs = ps.executeQuery(); // select의 결과는 항목명+Row 테이블!
		      System.out.println("4. SQL문 오라클로 보내기 성공.");
		      if (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
		         // true이면 있다라는 의미, false이면 없다라는 의미
		         System.out.println("검색결과 있음. 성공.");
		         int id2 = rs.getInt(1);
		         String name2 = rs.getString(2);
		         String url2 = rs.getString(3);
		         String img2 = rs.getString(4);
		         // 검색결과를 검색화면 UI부분을 주어야 함.
		         bag = new BookVO();
		         bag.setId(id2);
		         bag.setName(name2);
		         bag.setUrl(url2);
		         bag.setImg(img2);
		      } else {
		         System.out.println("검색결과 없음. 성공.");
		      }
		      // System.out.println(result);
		   } catch (Exception e) {
		      e.printStackTrace();
		   }
		   // return id, pw, name, tel은 XXXXX!
		   // return 뒤에는 반드시 여러 데이터를 묶어서 리턴해주어야 함.
		   // 검색결과가 있을 때는 bag에 데이터가 들어있음.
		   // 검색결과가 없을 때는 bag에 무엇이 들어있나? null
		   return bag;
		}

}