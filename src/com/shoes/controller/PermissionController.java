package com.shoes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Permission;
import com.shoes.service.IPermissionService;

@Controller
public class PermissionController {
	@Autowired
	private IPermissionService iPermissionService;

	@RequestMapping("showAllPermission.do")
	public ModelAndView findPermission() {
		ModelAndView mv = new ModelAndView();
		List<Permission> perList = iPermissionService.findAllPermission();
		mv.addObject("perList", perList);
		mv.setViewName("back/admins/adminAccount/ShowPermission.jsp");
		return mv;
	}
	
	@RequestMapping("showPermission.do")
	public ModelAndView selectPage(Integer pageNum) {

		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iPermissionService.selectPage(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/adminAccount/ShowPermission.jsp");
		return mv;
	}
	
	@RequestMapping("showModifyPermission.do")
	public ModelAndView findByPerid(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int perid = Integer.parseInt(request.getParameter("perid"));
		
		Permission permission = iPermissionService.findByPerid(perid);
		mv.addObject("permission", permission);
		mv.setViewName("back/admins/adminAccount/ModifyPermission.jsp");
		return mv;
	}
	
	@RequestMapping("modifyPermission.do")
	public ModelAndView modify(Permission permission) {
		ModelAndView mv = new ModelAndView();
		iPermissionService.modifyPermission(permission);
		mv.setViewName("showPermission.do");
		return mv;
	}
	
	@RequestMapping("DeletePermission.do")
	public ModelAndView delete(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int perid = Integer.parseInt(request.getParameter("perid"));
		iPermissionService.deletePermission(perid);
		mv.setViewName("showPermission.do");
		return mv;
	}
	
	@RequestMapping("addPermission.do")
	public ModelAndView addPermission(Permission permission) {
		ModelAndView mv = new ModelAndView();
		Permission per = iPermissionService.findByPername(permission.getPername());
		if (per == null) {
			iPermissionService.addPermission(permission);
			mv.setViewName("back/admins/adminAccount/ShowPermission.jsp");
		} else {
			mv.addObject("err", "该权限已经存在");
			mv.setViewName("showPermission.do");
		}
		
		return mv;
	}
}
