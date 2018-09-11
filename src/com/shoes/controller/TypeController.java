package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Type;
import com.shoes.service.ITypeService;

@Controller
public class TypeController {
	@Autowired
	private ITypeService iTypeService;
	
	@RequestMapping("type.do")
	public ModelAndView findTypePage(Integer pageNum) {
		if (pageNum==null || pageNum<=0) {
			pageNum = 1;
		}
		Page page = new Page();
		page.setCurPage(pageNum);
		iTypeService.findTypePage(page);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/productManagement/ShowTypes.jsp");
		
		return mv;
	}
	
	@RequestMapping("TypesUpdate.do")
	public ModelAndView findByTid(HttpServletRequest request) {
		int tid = Integer.parseInt(request.getParameter("tid"));
		Type type = iTypeService.findByTid(tid);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("type", type);
		mv.setViewName("back/admins/productManagement/modifyType.jsp");
		
		return mv;
	}
	
	@RequestMapping("ModifyTypes.do")
	public ModelAndView modifyType(Type type) {
		iTypeService.modifyType(type);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("type.do");
		
		return mv;
	}
	
	@RequestMapping("addTypes.do")
	public ModelAndView addType(Type type) {
		iTypeService.addType(type);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("type.do");
		
		return mv;
	}
}
