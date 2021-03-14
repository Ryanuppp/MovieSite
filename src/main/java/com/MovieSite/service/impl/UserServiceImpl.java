package com.MovieSite.service.impl;

import com.MovieSite.dao.UserDao;
import com.MovieSite.entity.Cinema;
import com.MovieSite.entity.User;
import com.MovieSite.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;
    public int checkForUserLogin(User user){
        User u = userDao.findByUsername(user.getUsername());
        if (u==null){
            //不存在
            return 0;
        }
        else {
            if (u.getPassword().equals(user.getPassword())){
                //存在 密码正确
                return 2;
            }
            // 密码不正确
            else return 0;
        }
    }

    public int checkForUserRegister(User user){
        User u = userDao.findByUsername(user.getUsername());
        if (u==null){
            //不存在
            userDao.addUser(user);
            return 1;
        }
        else {
            System.out.println("该用户名已存在");
            return 0;
        }

}
}
