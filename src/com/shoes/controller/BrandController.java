package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Brand;
import com.shoes.service.IBrandService;

@Controller
public class BrandController {
	@Autowired
	private IBrandService iBrandService;
	
	@RequestMapping("brand.do")
	public ModelAndView findBrandPage(Integer pageNum) {
		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iBrandService.findBrandPage(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/productManagement/ShowBrands.jsp");
		return mv;
	}
	
	@RequestMapping("ModifyBrands.do")
	public ModelAndView modifyBrand(Brand brand) {
		iBrandService.modifyBrand(brand);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("brand.do");
		return mv;
	}
	
	@RequestMapping("UpdateBrands.do")
	public ModelAndView findByBid(HttpServletRequest request) {
		int bid = Integer.parseInt(request.getParameter("bid"));
		Brand brand = iBrandService.findByBid(bid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("brand", brand);
		mv.setViewName("back/admins/productManagement/modifyBrands.jsp");
		return mv;
	}
}
