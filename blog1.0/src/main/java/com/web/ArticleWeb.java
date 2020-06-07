package com.web;

import com.domain.Article;
import com.domain.Comment;
import com.domain.User;
import com.service.ArticleService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ArticleWeb {

    @Autowired
    private ArticleService articleService;

    //@Autowired
    //private CommentServiceImpl commentService;
    @Autowired
    private UserService userService;

    @Autowired
    private CommentWeb commentWeb;

    /*
    @RequestMapping("/article/findAll")
    public String findAll(Model model){  //存数据， Model对象
        System.out.println("Controller表现层：查询所有账户...");
        // 调用service的方法
        List<Article> list = articleService.findAll();
        model.addAttribute("articles",list);
        return "WEB-INF/pages/articleList";
    }
     */

    @RequestMapping("/firstpage")
    public ModelAndView showFirstPage(){
        ModelAndView modelAndView =new ModelAndView("/index");
        List<Article> articles=articleService.findAll();
        //System.out.println(articles.get(0));
        modelAndView.addObject("articles",articles);
        return modelAndView;
    }

    @RequestMapping("/article/showDetail")
    public ModelAndView showArticleDetailPage(HttpServletRequest request){
        ModelAndView modelAndView =new ModelAndView("WEB-INF/pages/articleDetail");
        int id=Integer.parseInt(request.getParameter("id"));

        Article article=articleService.selectById(id);
        //modelAndView.addObject("article",article);

        //显示文章的评论
        List<Comment> comments=commentWeb.showArticleComments(id);

        //List<Comment> comments=commentService.findCommentsById(id);


        modelAndView.addObject("article",article);
        modelAndView.addObject("comments",comments);

        return modelAndView;
    }

    @RequestMapping("/addArticleMiddle")
    public ModelAndView addArticleMiddle(){
        ModelAndView modelAndView=new ModelAndView("/WEB-INF/pages/addArticleInput");
        return modelAndView;
    }

    @RequestMapping("/addArticle")
    public String addArticle(HttpServletRequest request){
        User user = new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        User user1;
        user1=userService.userCheck(user);

        if(user1!=null){
            System.out.println("账号在数据库里找到了");
            Article article=new Article();
            article.setTitle(request.getParameter("title"));
            article.setContent(request.getParameter("content"));
            article.setWriter(request.getParameter("username"));
            articleService.addArticle(article);
            return "WEB-INF/pages/addArticleSuccess";
        }
        else{
            System.out.println("账号在数据库里没有找到");
            return "WEB-INF/pages/wrong_identity";
        }

    }

}
