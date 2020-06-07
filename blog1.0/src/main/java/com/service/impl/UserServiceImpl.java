package com.service.impl;

import com.dao.UserDao;
import com.domain.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void saveUser(User user) {
        System.out.println("Service业务层：注册一个user...");
        userDao.saveUser(user);
    }

    @Override
    public User userCheck(User user){
        return userDao.userCheck(user);
    }

}
