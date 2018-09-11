package com.shoes.service;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.ShoesQuestionAnswer;
import com.shoes.pojo.ShoesUserComment;

public interface ICommentService {
	List<ShoesUserComment> selectPage(Page page);
	List<ShoesQuestionAnswer> findQuestion(Page page);
	void addAnswer(ShoesQuestionAnswer sqa);
	ShoesQuestionAnswer findBySqid(int sqid);
	void deleteComment(int cid);
}
