package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.SpcifyShoeOrderResult;
import com.shoes.service.IOrderService;

@Controller
public class OrderController {
	@Autowired
	private IOrderService iOrderService;
	
	@RequestMapping("findOrderPage.do")
	public ModelAndView findOrderPage(Integer pageNum) {
		if (pageNum==null||pageNum<=0) {
			pageNum = 1;
		}
		Page page = new Page();
		page.setCurPage(pageNum);
		iOrderService.findOrderPage(page);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/orderManagement/showOrders.jsp");
		return mv;
	}
	
	@RequestMapping("findSpcifyOrderPage.do")
	public ModelAndView findSpcifyOrderPage(Integer pageNum) {
		if (pageNum==null||pageNum<=0) {
			pageNum = 1;
		}
		Page page = new Page();
		page.setCurPage(pageNum);
		iOrderService.findSpcifyOrderPage(page);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/orderManagement/showSpcify.jsp");
		return mv;
	}
	
	@RequestMapping("FindSpcifyResultsInfo.do")
	public ModelAndView showSpcifyResult(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int sprid = Integer.parseInt(request.getParameter("sprid"));
		SpcifyShoeOrderResult ssor = iOrderService.findBySprid(sprid);
		mv.addObject("ssor", ssor);
		mv.setViewName("back/admins/orderManagement/showSpcifyResult.jsp");
		return mv;
	}
}
