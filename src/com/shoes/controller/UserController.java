package com.shoes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.User;
import com.shoes.service.IUserService;

@Controller
public class UserController {

	@Autowired
	private IUserService iUserService;

	@RequestMapping("login.do")
	public ModelAndView login(HttpSession session, User user) {

		User resUser = iUserService.login(user);
		ModelAndView mv = new ModelAndView();

		if (resUser != null) {
			// 如果登录成功, 把用户信息存放到Session中, 跳转到主页
			session.setAttribute("user", resUser);

			mv.setViewName("index.jsp");
		} else {
			// 如果登录不成功, 给用户提示信息, 跳转到登录页面
			mv.addObject("err", "*用户名或密码错误，请重新登录");

			mv.setViewName("login.jsp");
		}

		return mv;
	}

	@RequestMapping("register.do")
	public ModelAndView register(User user) {
		User resUser = iUserService.findByUaccount(user.getUaccount());
		ModelAndView mv = new ModelAndView();
		System.out.println(resUser);
		if (resUser == null) {
			iUserService.regieter(user);
			mv.setViewName("login.jsp");
		} else {
			mv.addObject("user", resUser);
			mv.addObject("err", "*该用户名已经存在,请重新注册");
			mv.setViewName("register.jsp");
		}
		return mv;
	}

	@RequestMapping("showUser.do")
	public ModelAndView findAll() {
		ModelAndView mv = new ModelAndView();
		List<User> list = iUserService.findAllUser();
		mv.addObject("list", list);
		mv.setViewName("back/admins/userManagement/showUsers.jsp");
		return mv;
	}

	@RequestMapping("selectUser.do")
	public ModelAndView selectUser(Integer pageNum) {

		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iUserService.selectPage(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/userManagement/showUsers.jsp");
		return mv;
	}

	@RequestMapping("showModify.do")
	public ModelAndView showModifyUser(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int uid = Integer.parseInt(request.getParameter("uid"));
		User resUser = iUserService.findByUid(uid);
		mv.addObject("user", resUser);
		mv.setViewName("back/admins/userManagement/ModifyUser.jsp");
		return mv;
	}

	@RequestMapping("UserUpdate.do")
	public ModelAndView modifyUser(User user) {
		ModelAndView mv = new ModelAndView();
		iUserService.modifyUser(user);
		mv.setViewName("selectUser.do");
		return mv;
	}

	@RequestMapping("DeleteUser.do")
	public ModelAndView deleteUser(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int uid = Integer.parseInt(request.getParameter("uid"));
		iUserService.deleteUser(uid);
		mv.setViewName("selectUser.do");
		return mv;
	}
}
