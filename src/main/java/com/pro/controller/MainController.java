package com.pro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pro.dto.InfoDto;
import com.pro.service.MainService;



@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("/")
	public String main() {
		return "main";
	};
	
	@RequestMapping("/getInfo")
	@ResponseBody
	public InfoDto getInfo(@RequestParam("x") double x, @RequestParam("y") double y) {
		System.out.println("----getInfo.controller----");
		//System.out.println(x+","+y);
		
		InfoDto info = new InfoDto();
		info.setX(x);
		info.setY(y);
		//System.out.println(info);
		info = mainService.getInfo(info);
		System.out.println("[response]"+info);
		return info;
	};
};
