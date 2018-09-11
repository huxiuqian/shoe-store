package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.ShoesQuestionAnswer;
import com.shoes.service.ICommentService;

@Controller
public class CommentController {
	@Autowired
	private ICommentService iCommentService;
	
	@RequestMapping("comment.do")
	public ModelAndView selectPage(Integer pageNum) {
		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iCommentService.selectPage(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/evaluationManagement/showComment.jsp");
		return mv;
	}
	
	@RequestMapping("findQuestion.do")
	public ModelAndView findQuestion(Integer pageNum) {
		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iCommentService.findQuestion(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/evaluationManagement/Inquiry.jsp");
		return mv;
	}
	
	@RequestMapping("AnswerResponse.do")
	public ModelAndView showAddAnswer(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int sqid = Integer.parseInt(request.getParameter("sqid"));
		ShoesQuestionAnswer sqa = iCommentService.findBySqid(sqid);
		mv.addObject("sqa", sqa);
		mv.setViewName("/back/admins/evaluationManagement/addAnswer.jsp");
		return mv;
	}
	
	@RequestMapping("UpdateResponse.do")
	public ModelAndView addAnswer(ShoesQuestionAnswer sqa) {
		ModelAndView mv = new ModelAndView();
		iCommentService.addAnswer(sqa);
		mv.setViewName("findQuestion.do");
		return mv;
	}
	
	@RequestMapping("DeleteComments.do")
	public ModelAndView deleteComment(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int cid = Integer.parseInt(request.getParameter("cid"));
		iCommentService.deleteComment(cid);
		mv.setViewName("comment.do");
		return mv;
	}
}
