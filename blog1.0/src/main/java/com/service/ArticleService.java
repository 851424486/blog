package com.service;

import com.domain.Article;

import java.util.List;

public interface ArticleService {

    public List<Article> findAll();

    public Article selectById (int id);

    public void addArticle(Article article);
}
