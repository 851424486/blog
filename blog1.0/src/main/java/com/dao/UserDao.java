package com.dao;

import com.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository  //此注解代表这是一个持久层，用法类似@controller、@service
public interface UserDao {

    //注册user
    @Insert("insert into user (username,password) value(#{username},#{password})")
    public void saveUser(User user);

    /*
    //查询user
    @Select("select * from account")
    public boolean userMatch(User user);
     */
    @Select("select * from user where (username,password)=(#{username},#{password})")
    public User userCheck(User user);


}
