package com.jobportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobportal.dao.PlacementDriveDao;
import com.jobportal.dao.PlacementQuestionDao;
import com.jobportal.entity.PlacementDrive;
import com.jobportal.entity.PlacementQuestion;

@Controller
public class PlacementAdminController {

    @Autowired
    private PlacementDriveDao placementDriveDao;

    @Autowired
    private PlacementQuestionDao placementQuestionDao;


    // =====================================================
    // ADD PLACEMENT DRIVE PAGE
    // =====================================================

    @RequestMapping(
            value = "/admin/add-drive",
            method = RequestMethod.GET
    )
    public String addDrivePage() {

        return "add_drive";
    }


    // =====================================================
    // SAVE PLACEMENT DRIVE
    // =====================================================

    @RequestMapping(
            value = "/admin/add-drive",
            method = RequestMethod.POST
    )
    public String addDrive(

            @RequestParam("companyName") String companyName,
            @RequestParam("driveYear") int driveYear,
            @RequestParam("jobRole") String jobRole,
            @RequestParam("packageAmount") String packageAmount,
            @RequestParam("studentsAppeared") int studentsAppeared,
            @RequestParam("studentsSelected") int studentsSelected,
            @RequestParam("driveDate") String driveDate,
            @RequestParam("description") String description,

            Model model) {

        PlacementDrive drive =
                new PlacementDrive();

        drive.setCompanyName(companyName);
        drive.setDriveYear(driveYear);
        drive.setJobRole(jobRole);
        drive.setPackageAmount(packageAmount);
        drive.setStudentsAppeared(studentsAppeared);
        drive.setStudentsSelected(studentsSelected);
        drive.setDriveDate(driveDate);
        drive.setDescription(description);

        boolean result =
                placementDriveDao.addDrive(drive);

        if (result) {

            model.addAttribute(
                    "success",
                    "Placement Drive Added Successfully!"
            );

        } else {

            model.addAttribute(
                    "error",
                    "Placement Drive Not Added."
            );
        }

        return "add_drive";
    }


    // =====================================================
    // ADD QUESTION PAGE
    // =====================================================

    @RequestMapping(
            value = "/admin/add-question",
            method = RequestMethod.GET
    )
    public String addQuestionPage(Model model) {

        List<PlacementDrive> drives =
                placementDriveDao.getAllDrives();

        model.addAttribute(
                "drives",
                drives
        );

        return "add_question";
    }


    // =====================================================
    // SAVE QUESTION
    // =====================================================

    @RequestMapping(
            value = "/admin/add-question",
            method = RequestMethod.POST
    )
    public String addQuestion(

            @RequestParam("driveId") int driveId,
            @RequestParam("category") String category,
            @RequestParam("question") String question,

            Model model) {

        PlacementQuestion placementQuestion =
                new PlacementQuestion();

        placementQuestion.setDriveId(driveId);
        placementQuestion.setCategory(category);
        placementQuestion.setQuestion(question);

        boolean result =
                placementQuestionDao.addQuestion(
                        placementQuestion
                );

        List<PlacementDrive> drives =
                placementDriveDao.getAllDrives();

        model.addAttribute(
                "drives",
                drives
        );

        if (result) {

            model.addAttribute(
                    "success",
                    "Question Added Successfully!"
            );

        } else {

            model.addAttribute(
                    "error",
                    "Question Not Added."
            );
        }

        return "add_question";
    }

}
