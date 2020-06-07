package com.service.impl;

import com.dao.ArticleDao;
import com.domain.Article;
import com.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDao articleDao;


    @Override
    public List<Article> findAll() {
        return articleDao.findAll();
    }

    @Override
    public Article selectById (int id){
        return articleDao.selectById(id);
    }

    @Override
    public void addArticle(Article article){
        articleDao.addArticle(article);
    }

}
