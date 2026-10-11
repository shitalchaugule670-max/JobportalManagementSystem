package com.jobportal.service;

import com.jobportal.entity.User;

public interface UserService {

    User login(String email, String password);

    boolean register(String name, String email, String password);
}