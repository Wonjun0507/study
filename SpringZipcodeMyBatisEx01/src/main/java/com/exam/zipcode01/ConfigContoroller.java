package com.exam.zipcode01;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConfigContoroller {
	
	@Autowired
	private ZipcodeMapper zipcodeMapper;
	
	@RequestMapping("/zipcode.do")
	public String zipcode() {
		return "zipcode";
	}
	
	@RequestMapping("/zipcode_ok.do")
	public String zipcode_ok(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		System.out.println("zipcode_ok 인 ");
		
		System.out.println("dong : " + request.getParameter("dong"));
		
		String strDong = request.getParameter("dong")+"%";
		List<ZipcodeTO> lists = zipcodeMapper.selectList(strDong);
		
		model.addAttribute("lists", lists);
		
		System.out.println("zipcode_ok 아웃 ");
		
		return "zipcode_ok";
	}

}
