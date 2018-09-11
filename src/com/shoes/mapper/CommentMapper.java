package com.shoes.mapper;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.ShoesQuestionAnswer;
import com.shoes.pojo.ShoesUserComment;

public interface CommentMapper {
	List<ShoesUserComment> selectPage(Page page);
	List<ShoesQuestionAnswer> findQuestion(Page page);
	ShoesQuestionAnswer findBySqid(int sqid);
	void addAnswer(ShoesQuestionAnswer sqa);
	void deleteComment(int cid);
}
