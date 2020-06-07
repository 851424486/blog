package com.web;

import com.domain.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserWeb {

    @Autowired
    private UserService userService;

    @RequestMapping("/user/save")
    public String save(User user) {
        userService.saveUser(user);
        return "WEB-INF/pages/saveUserSuccess";
    }

    @RequestMapping("/register")
    public ModelAndView userRegiserPage(){
        ModelAndView modelAndView =new ModelAndView("/WEB-INF/pages/registerPage");
        return modelAndView;
    }

    @RequestMapping("/registerSuccess")
    public String userRegisterSuccess(User user){
        userService.saveUser(user);
        return "WEB-INF/pages/saveUserSuccess";
    }

    /*
    @RequestMapping("/identityCheckInput")
    public ModelAndView identityCheckInput(){
        ModelAndView modelAndView=new ModelAndView("/WEB-INF/pages/identity_check");
        return modelAndView;
    }

    @RequestMapping("/identityCheck")
    public String identityCheck(User user){
        User user1;
        user1=userService.userCheck(user);

        if(user1!=null){
            System.out.println("账号在数据库里找到了");
            return "WEB-INF/pages/article_add";
        }
        else{
            System.out.println("账号在数据库里没有找到");
            return "WEB-INF/pages/wrong_identity";
        }

    }
     */

}
