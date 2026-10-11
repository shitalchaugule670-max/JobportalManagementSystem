package com.jobportal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobportal.entity.User;
import com.jobportal.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    // ================= LOGIN PAGE =================

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loginPage() {

        return "login";
    }

    // ================= LOGIN =================

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            HttpSession session) {

        User user = userService.login(email, password);

        if (user != null) {

            // Store logged-in user
            session.setAttribute("user", user);

            // Admin → Admin Dashboard
            if ("ADMIN".equalsIgnoreCase(user.getRole())) {

                return "adminDashboard";

            }

            // User → User Dashboard
            else {

                return "dashboard";
            }
        }

        // Login failed
        return "login";
    }

    // ================= LOGOUT =================

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {

        // Destroy session
        session.invalidate();

        // Directly open Login Page
        return "redirect:/";
    }
}