package com.smdental.service;

import com.smdental.model.User;

public interface UserService {

    User findUserByName(String userName);
}
