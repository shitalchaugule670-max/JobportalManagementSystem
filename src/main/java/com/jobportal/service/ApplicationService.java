package com.jobportal.service;

import java.util.List;

import com.jobportal.entity.Application;

public interface ApplicationService {

    boolean applyJob(int userId, int jobId);

    List<Application> getUserApplications(int userId);

    List<Application> getAllApplications();

    boolean updateStatus(int applicationId, String status);
}