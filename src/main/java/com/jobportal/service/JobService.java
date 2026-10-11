package com.jobportal.service;

import java.util.List;
import com.jobportal.entity.Job;

public interface JobService {

    boolean addJob(Job job);

    List<Job> getAllJobs();

    List<Job> searchJobs(String keyword);

    Job getJobById(int jobId);

    boolean updateJob(Job job);

    boolean deleteJob(int jobId);
}