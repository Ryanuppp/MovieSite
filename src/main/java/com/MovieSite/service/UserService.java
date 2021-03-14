package com.MovieSite.service;

import com.MovieSite.entity.Cinema;
import com.MovieSite.entity.User;

import java.util.List;

public interface UserService {

    public int checkForUserLogin(User user);

    public int checkForUserRegister(User user);
}
