package com.smdental.dao;

import com.smdental.model.User;

public interface UserDao {

    User findUserByName(String userName);
}
