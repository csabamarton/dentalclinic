package com.smdental.service;

import com.smdental.dao.UserDao;
import com.smdental.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public User findUserByName(String userName) {
        return userDao.findUserByName(userName);
    }
}
