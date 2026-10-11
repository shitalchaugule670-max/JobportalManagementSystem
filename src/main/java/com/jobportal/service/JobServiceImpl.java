package com.jobportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobportal.dao.JobDao;
import com.jobportal.entity.Job;

@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobDao jobDao;

    @Override
    public boolean addJob(Job job) {
        return jobDao.addJob(job);
    }

    @Override
    public List<Job> getAllJobs() {
        return jobDao.getAllJobs();
    }

    @Override
    public List<Job> searchJobs(String keyword) {
        return jobDao.searchJobs(keyword);
    }

    @Override
    public Job getJobById(int jobId) {
        return jobDao.getJobById(jobId);
    }

    @Override
    public boolean updateJob(Job job) {
        return jobDao.updateJob(job);
    }

    @Override
    public boolean deleteJob(int jobId) {
        return jobDao.deleteJob(jobId);
    }
}