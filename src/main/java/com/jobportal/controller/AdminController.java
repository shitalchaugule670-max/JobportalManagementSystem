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
import com.jobportal.service.ApplicationService;

@Controller
public class AdminController {

    @Autowired
    private JobDao jobDao;

    @Autowired
    private ApplicationService applicationService;


    // =====================================================
    // ADMIN DASHBOARD
    // =====================================================

    @RequestMapping(
            value = "/admin",
            method = RequestMethod.GET
    )
    public String admin() {

        return "adminDashboard";
    }


    // =====================================================
    // ADD JOB PAGE
    // =====================================================

    @RequestMapping(
            value = "/admin/add-job",
            method = RequestMethod.GET
    )
    public String addJobPage() {

        return "addJob";
    }


    // =====================================================
    // SAVE JOB
    // =====================================================

    @RequestMapping(
            value = "/admin/add-job",
            method = RequestMethod.POST
    )
    public String addJob(
            @RequestParam("title") String title,
            @RequestParam("company") String company,
            @RequestParam("location") String location,
            @RequestParam("salary") String salary,
            @RequestParam("skills") String skills,
            @RequestParam("description") String description,
            @RequestParam("lastDate") String lastDate,
            Model model) {

        Job job = new Job();

        job.setTitle(title);
        job.setCompany(company);
        job.setLocation(location);
        job.setSalary(salary);
        job.setSkills(skills);
        job.setDescription(description);
        job.setLastDate(lastDate);

        boolean result = jobDao.addJob(job);

        if (result) {

            model.addAttribute(
                    "success",
                    "✅ Job Added Successfully!"
            );

        } else {

            model.addAttribute(
                    "error",
                    "❌ Job Not Added. Please try again."
            );
        }

        return "addJob";
    }


    // =====================================================
    // MANAGE JOBS
    // =====================================================

    @RequestMapping(
            value = "/admin/jobs",
            method = RequestMethod.GET
    )
    public String manageJobs(Model model) {

        List<Job> jobs = jobDao.getAllJobs();

        model.addAttribute(
                "jobs",
                jobs
        );

        return "manageJobs";
    }


    // =====================================================
    // EDIT JOB
    // =====================================================

    @RequestMapping(
            value = "/admin/edit-job",
            method = RequestMethod.GET
    )
    public String editJob(
            @RequestParam("id") int id,
            Model model) {

        Job job = jobDao.getJobById(id);

        if (job == null) {

            model.addAttribute(
                    "error",
                    "Job not found."
            );

            return "manageJobs";
        }

        model.addAttribute(
                "job",
                job
        );

        return "editJob";
    }


    // =====================================================
    // UPDATE JOB
    // =====================================================

    @RequestMapping(
            value = "/admin/update-job",
            method = RequestMethod.POST
    )
    public String updateJob(
            @RequestParam("jobId") int jobId,
            @RequestParam("title") String title,
            @RequestParam("company") String company,
            @RequestParam("location") String location,
            @RequestParam("salary") String salary,
            @RequestParam("skills") String skills,
            @RequestParam("description") String description,
            @RequestParam("lastDate") String lastDate,
            Model model) {

        Job job = new Job();

        job.setJobId(jobId);
        job.setTitle(title);
        job.setCompany(company);
        job.setLocation(location);
        job.setSalary(salary);
        job.setSkills(skills);
        job.setDescription(description);
        job.setLastDate(lastDate);

        boolean result = jobDao.updateJob(job);

        if (result) {

            return "redirect:/admin/jobs";

        } else {

            model.addAttribute(
                    "error",
                    "Job update failed."
            );

            model.addAttribute(
                    "job",
                    job
            );

            return "editJob";
        }
    }


    // =====================================================
    // DELETE JOB
    // =====================================================

    @RequestMapping(
            value = "/admin/delete-job",
            method = RequestMethod.GET
    )
    public String deleteJob(
            @RequestParam("id") int id) {

        jobDao.deleteJob(id);

        return "redirect:/admin/jobs";
    }


    // =====================================================
    // VIEW ALL APPLICATIONS
    // =====================================================

    @RequestMapping(
            value = "/admin/applications",
            method = RequestMethod.GET
    )
    public String viewApplications(Model model) {

        List<Application> applications =
                applicationService.getAllApplications();

        model.addAttribute(
                "applications",
                applications
        );

        return "viewApplications";
    }


    // =====================================================
    // UPDATE APPLICATION STATUS
    // =====================================================

    @RequestMapping(
            value = "/admin/update-application-status",
            method = RequestMethod.POST
    )
    public String updateApplicationStatus(
            @RequestParam("applicationId") int applicationId,
            @RequestParam("status") String status) {

        applicationService.updateStatus(
                applicationId,
                status
        );

        return "redirect:/admin/applications";
    }

}