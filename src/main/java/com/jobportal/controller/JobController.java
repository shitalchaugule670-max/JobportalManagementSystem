package com.jobportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobportal.dao.JobDao;
import com.jobportal.entity.Application;
import com.jobportal.entity.Job;
import com.jobportal.entity.User;
import com.jobportal.service.ApplicationService;

import jakarta.servlet.http.HttpSession;

@Controller
public class JobController {

    @Autowired
    private JobDao jobDao;

    @Autowired
    private ApplicationService applicationService;

    // =====================================================
    // ALL JOBS
    // =====================================================

    @RequestMapping(
            value = "/jobs",
            method = RequestMethod.GET
    )
    public String jobs(
            @RequestParam(
                    value = "keyword",
                    required = false,
                    defaultValue = ""
            ) String keyword,
            Model model) {

        List<Job> jobs;

        if (keyword == null || keyword.trim().isEmpty()) {

            jobs = jobDao.getAllJobs();

        } else {

            jobs = jobDao.searchJobs(keyword);
        }

        model.addAttribute("jobs", jobs);
        model.addAttribute("keyword", keyword);

        return "jobs";
    }

    // =====================================================
    // JOB DETAILS
    // =====================================================

    @RequestMapping(
            value = "/jobDetails",
            method = RequestMethod.GET
    )
    public String jobDetails(
            @RequestParam("id") int id,
            Model model) {

        Job job = jobDao.getJobById(id);

        if (job == null) {

            model.addAttribute(
                    "error",
                    "Job not found."
            );

            return "jobs";
        }

        model.addAttribute("job", job);

        return "jobDetails";
    }

    // =====================================================
    // APPLY JOB
    // =====================================================

    @RequestMapping(
            value = "/applyJob",
            method = RequestMethod.POST
    )
    public String applyJob(
            @RequestParam("jobId") int jobId,
            HttpSession session,
            Model model) {

        // Check logged-in user

        User user = (User) session.getAttribute("user");

        if (user == null) {

            return "redirect:/login";
        }

        int userId = user.getId();

        boolean result =
                applicationService.applyJob(
                        userId,
                        jobId
                );

        Job job = jobDao.getJobById(jobId);

        model.addAttribute("job", job);

        if (result) {

            model.addAttribute(
                    "success",
                    "✅ Job Applied Successfully!"
            );

        } else {

            model.addAttribute(
                    "error",
                    "⚠ You have already applied for this job."
            );
        }

        return "jobDetails";
    }

    // =====================================================
    // MY APPLICATIONS
    // =====================================================

    @RequestMapping(
            value = "/myApplications",
            method = RequestMethod.GET
    )
    public String myApplications(
            HttpSession session,
            Model model) {

        User user =
                (User) session.getAttribute("user");

        if (user == null) {

            return "redirect:/login";
        }

        int userId = user.getId();

        List<Application> applications =
                applicationService.getUserApplications(
                        userId
                );

        model.addAttribute(
                "applications",
                applications
        );

        return "myApplications";
    }
}