package com.service.impl;

import com.dao.CommentDao;
import com.domain.Comment;
import com.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public List<Comment> findCommentsById(int articleId){
        return commentDao.findCommentsById(articleId);
    }

    @Override
    public void addComment(Comment comment){
        commentDao.addComment(comment);
    }

}
