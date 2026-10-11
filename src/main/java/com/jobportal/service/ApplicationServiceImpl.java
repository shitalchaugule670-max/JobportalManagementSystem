package com.jobportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobportal.dao.ApplicationDao;
import com.jobportal.entity.Application;

@Service
public class ApplicationServiceImpl implements ApplicationService {

    @Autowired
    private ApplicationDao applicationDao;

    @Override
    public boolean applyJob(int userId, int jobId) {

        return applicationDao.applyJob(userId, jobId);
    }

    @Override
    public List<Application> getUserApplications(int userId) {

        return applicationDao.getUserApplications(userId);
    }

    @Override
    public List<Application> getAllApplications() {

        return applicationDao.getAllApplications();
    }

    @Override
    public boolean updateStatus(
            int applicationId,
            String status) {

        return applicationDao.updateStatus(
                applicationId,
                status
        );
    }
}