package com.jobportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobportal.entity.Application;
import com.jobportal.service.ApplicationService;

@Controller
public class ApplicationController {

    @Autowired
    private ApplicationService applicationService;


    // View all applications - Admin
    @RequestMapping(value = "/applications", method = RequestMethod.GET)
    public String applications(Model model) {

        List<Application> applications =
                applicationService.getAllApplications();

        model.addAttribute("applications", applications);

        return "viewApplications";
    }


    // Update application status - Admin
    @RequestMapping(
            value = "/updateApplicationStatus",
            method = RequestMethod.POST)
    public String updateApplicationStatus(
            @RequestParam("applicationId") int applicationId,
            @RequestParam("status") String status) {

        applicationService.updateStatus(applicationId, status);

        return "redirect:/applications";
    }
}