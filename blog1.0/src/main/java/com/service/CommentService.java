package com.service;

import com.domain.Comment;

import java.util.List;

public interface CommentService {

    public List<Comment> findCommentsById(int articleId);

    public void addComment(Comment comment);

}
