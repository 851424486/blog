package com.dao;

import com.domain.Article;
import com.domain.Comment;
import com.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository  //此注解代表这是一个持久层，用法类似@controller、@service
public interface CommentDao {

    //@Select("select * from article where id = #{id}")
    //public Article selectById(int id);
    //@Select("select * from article")
    //public List<Article> findAll();
    @Select("select * from comment where articleId = #{articleId}")
    public List<Comment> findCommentsById(int articleId);

    @Insert("insert into comment (articleId,name,content) value(#{articleId},#{name},#{content})")
    public void addComment(Comment comment);

}
