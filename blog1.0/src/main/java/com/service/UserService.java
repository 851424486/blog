package com.service;

import com.domain.User;

public interface UserService {

    public void saveUser(User user);

    public User userCheck(User user);
}
