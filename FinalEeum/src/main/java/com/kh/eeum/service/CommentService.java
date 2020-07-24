package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Comment;

public interface CommentService {

	public int getListCount(int num);

	public List<Comment> getCommentList(int num, int page);

	public int commentsInsert(Comment co);

	public int commentsDelete(int num);

	public int commentsUpdate(Comment co);

}
