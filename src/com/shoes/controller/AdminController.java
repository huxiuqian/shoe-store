package com.shoes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Admin;
import com.shoes.pojo.Permission;
import com.shoes.service.IAdminService;
import com.shoes.service.IPermissionService;

@Controller
public class AdminController {
	@Autowired
	private IAdminService iAdminService;
	@Autowired
	private IPermissionService iPermissionService;

	@RequestMapping("adminLogin.do")
	public ModelAndView login(HttpSession session, Admin admin) {
		Admin resAdmin = iAdminService.login(admin);
		ModelAndView mv = new ModelAndView();

		if (resAdmin != null) {
			session.setAttribute("admin", resAdmin);
			mv.setViewName("back/index.jsp");
		} else {
			mv.addObject("err", "用户名或密码错误，请重新登录");
			mv.setViewName("back/login.jsp");
		}

		return mv;
	}

	@RequestMapping("showAddAdmin.do")
	public ModelAndView findPermission() {
		ModelAndView mv = new ModelAndView();
		List<Permission> perList = iPermissionService.findAllPermission();
		mv.addObject("perList", perList);
		mv.setViewName("back/admins/adminAccount/AddAdmin.jsp");
		return mv;
	}

	@RequestMapping("adminAdd.do")
	public ModelAndView add(Admin admin) {
		ModelAndView mv = new ModelAndView();
		Admin resAdmin = iAdminService.findByAcount(admin.getAcount());
		if (resAdmin == null) {
			iAdminService.add(admin);
			mv.setViewName("back/admins/adminAccount/ShowAdmins.jsp");
		} else {
			mv.addObject("err", "该管理员账号已经存在");
			mv.setViewName("AdminSelectPage.do");
		}
		return mv;
	}

	@RequestMapping("showAdmin.do")
	public ModelAndView findAll() {
		ModelAndView mv = new ModelAndView();
		List<Admin> list = iAdminService.findAll();
		mv.addObject("list", list);
		mv.setViewName("back/admins/adminAccount/ShowAdmins.jsp");
		return mv;
	}

	@RequestMapping("AdminSelectPage.do")
	public ModelAndView selectPage(Integer pageNum) {

		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iAdminService.selectPage(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/adminAccount/ShowAdmins.jsp");
		return mv;
	}

	@RequestMapping("showUpdateAdmin.do")
	public ModelAndView findById(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int aid = Integer.parseInt(request.getParameter("aid"));
		Admin resAdmin = iAdminService.findByAid(aid);
		List<Permission> perList = iPermissionService.findAllPermission();
		mv.addObject("admin", resAdmin);
		mv.addObject("perList", perList);
		mv.setViewName("back/admins/adminAccount/ModifyAdmin.jsp");
		return mv;
	}
	
	@RequestMapping("DeleteAdmins.do")
	public ModelAndView delete(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int aid = Integer.parseInt(request.getParameter("aid"));
		iAdminService.deleteAdmin(aid);
		mv.setViewName("AdminSelectPage.do");
		return mv;
	}

	@RequestMapping("modifyAdmin.do")
	public ModelAndView modify(Admin admin) {
		ModelAndView mv = new ModelAndView();
		iAdminService.modifyAdmin(admin);
		mv.setViewName("AdminSelectPage.do");
		return mv;
	}
}
