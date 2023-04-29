package com.multi.mvc05;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // 스프링에서 제어하는 역할로 등록!
public class BookController {
    @Autowired
    BookDAO dao;
    
    @RequestMapping("book_insert")
    public void book(BookVO bag) {
        System.out.println(bag);
        dao.insert(bag);
    }

    @RequestMapping("book_delete")
    public void book(String name) {
        dao.delete(name);
    }

    @RequestMapping("book_update")
    public void book_update(BookVO bag) {
        dao.update(bag);
    }
    
    @RequestMapping("book_list")
    public void list(Model model){
    	List<BookVO> list = dao.list();
    	model.addAttribute("list", list);
    }
    
    @RequestMapping("book_one")
    public void book_one(String name, Model model) {
        BookVO bag = dao.one(name);
        model.addAttribute("bag", bag);
    }
   
}
