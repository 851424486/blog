package com.web;

import com.domain.Comment;
import com.domain.User;
import com.service.CommentService;
import com.service.UserService;
import com.service.impl.CommentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CommentWeb {

    @Autowired
    private CommentServiceImpl commentService;

    @Autowired
    private UserService userService;

    @RequestMapping("/showComment")
    public List<Comment> showArticleComments(int articleId){
        List<Comment> comments=new ArrayList<Comment>();
        comments=commentService.findCommentsById(articleId);
        return comments;
    }

    @RequestMapping("/addComment")
    public String addComment(HttpServletRequest request){
        User user = new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        User user1;
        user1=userService.userCheck(user);
        if(user1!=null){
            System.out.println("账号在数据库里找到了");
            Comment comment=new Comment();
            int i=Integer.parseInt(request.getParameter("articleId"));
            comment.setArticleId(i);
            comment.setName(request.getParameter("username"));
            comment.setContent(request.getParameter("content"));
            commentService.addComment(comment);
            return "WEB-INF/pages/addCommentSuccess";
        }
        else{
            System.out.println("账号在数据库里没有找到");
            return "WEB-INF/pages/wrong_identity";
        }

    }

}

