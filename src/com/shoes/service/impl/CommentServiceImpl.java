package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.CommentMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.ShoesQuestionAnswer;
import com.shoes.pojo.ShoesUserComment;
import com.shoes.service.ICommentService;

@Service
public class CommentServiceImpl implements ICommentService {
	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public List<ShoesUserComment> selectPage(Page page) {
		return commentMapper.selectPage(page);
	}

	@Override
	public List<ShoesQuestionAnswer> findQuestion(Page page) {
		return commentMapper.findQuestion(page);
	}

	@Override
	public void addAnswer(ShoesQuestionAnswer sqa) {
		commentMapper.addAnswer(sqa);		
	}

	@Override
	public ShoesQuestionAnswer findBySqid(int sqid) {
		return commentMapper.findBySqid(sqid);
	}

	@Override
	public void deleteComment(int cid) {
		commentMapper.deleteComment(cid);		
	}

}
