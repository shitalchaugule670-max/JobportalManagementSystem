package com.jobportal.entity;

public class PlacementDrive {

    private int driveId;
    private String companyName;
    private int driveYear;
    private String jobRole;
    private String packageAmount;
    private int studentsAppeared;
    private int studentsSelected;
    private String driveDate;
    private String description;

    public PlacementDrive() {
    }

    public int getDriveId() {
        return driveId;
    }

    public void setDriveId(int driveId) {
        this.driveId = driveId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public int getDriveYear() {
        return driveYear;
    }

    public void setDriveYear(int driveYear) {
        this.driveYear = driveYear;
    }

    public String getJobRole() {
        return jobRole;
    }

    public void setJobRole(String jobRole) {
        this.jobRole = jobRole;
    }

    public String getPackageAmount() {
        return packageAmount;
    }

    public void setPackageAmount(String packageAmount) {
        this.packageAmount = packageAmount;
    }

    public int getStudentsAppeared() {
        return studentsAppeared;
    }

    public void setStudentsAppeared(int studentsAppeared) {
        this.studentsAppeared = studentsAppeared;
    }

    public int getStudentsSelected() {
        return studentsSelected;
    }

    public void setStudentsSelected(int studentsSelected) {
        this.studentsSelected = studentsSelected;
    }

    public String getDriveDate() {
        return driveDate;
    }

    public void setDriveDate(String driveDate) {
        this.driveDate = driveDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}