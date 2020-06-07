package com.dao;

import com.domain.Article;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository  //此注解代表这是一个持久层，用法类似@controller、@service
public interface ArticleDao {

    @Select("select * from article")
    public List<Article> findAll();

    @Select("select * from article where id = #{id}")
    public Article selectById(int id);

    @Insert("insert into article (title,content,writer) value(#{title},#{content},#{writer})")
    public void addArticle(Article article);

}
