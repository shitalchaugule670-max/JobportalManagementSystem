package com.jobportal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobportal.dao.Userdao;
import com.jobportal.entity.User;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private Userdao userDAO;

    @Override
    public User login(String email, String password) {

        return userDAO.login(email, password);
    }

    @Override
    public boolean register(String name, String email, String password) {

        return userDAO.register(name, email, password);
    }
}