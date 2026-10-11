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
public class PlacementController {

    @Autowired
    private PlacementDriveDao driveDao;

    @Autowired
    private PlacementQuestionDao questionDao;

    // =====================================================
    // ADMIN - VIEW PLACEMENT DRIVES
    // =====================================================

    @RequestMapping(
            value = "/admin/placement-drives",
            method = RequestMethod.GET
    )
    public String placementDrives(Model model) {

        List<PlacementDrive> drives =
                driveDao.getAllDrives();

        model.addAttribute("drives", drives);

        return "placementDrives";
    }

    // =====================================================
    // ADMIN - ADD PLACEMENT DRIVE PAGE
    // =====================================================

    @RequestMapping(
            value = "/admin/placement-drives/add",
            method = RequestMethod.GET
    )
    public String addPlacementDrivePage() {

        return "addPlacementDrive";
    }

    // =====================================================
    // ADMIN - SAVE PLACEMENT DRIVE
    // =====================================================

    @RequestMapping(
            value = "/admin/placement-drives/add",
            method = RequestMethod.POST
    )
    public String addPlacementDrive(

            @RequestParam("companyName")
            String companyName,

            @RequestParam("driveYear")
            int driveYear,

            @RequestParam("jobRole")
            String jobRole,

            @RequestParam("packageAmount")
            String packageAmount,

            @RequestParam("studentsAppeared")
            int studentsAppeared,

            @RequestParam("studentsSelected")
            int studentsSelected,

            @RequestParam("driveDate")
            String driveDate,

            @RequestParam("description")
            String description,

            Model model
    ) {

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
                driveDao.addDrive(drive);

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

        return "addPlacementDrive";
    }

    // =====================================================
    // ADMIN - ADD QUESTION PAGE
    // =====================================================

    @RequestMapping(
            value = "/admin/placement-questions/add",
            method = RequestMethod.GET
    )
    public String addQuestionPage(

            @RequestParam("driveId")
            int driveId,

            Model model
    ) {

        model.addAttribute(
                "driveId",
                driveId
        );

        return "addPlacementQuestion";
    }

    // =====================================================
    // ADMIN - SAVE QUESTION
    // =====================================================

    @RequestMapping(
            value = "/admin/placement-questions/add",
            method = RequestMethod.POST
    )
    public String addQuestion(

            @RequestParam("driveId")
            int driveId,

            @RequestParam("category")
            String category,

            @RequestParam("question")
            String question,

            Model model
    ) {

        PlacementQuestion pq =
                new PlacementQuestion();

        pq.setDriveId(driveId);
        pq.setCategory(category);
        pq.setQuestion(question);

        boolean result =
                questionDao.addQuestion(pq);

        model.addAttribute(
                "driveId",
                driveId
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

        return "addPlacementQuestion";
    }

    // =====================================================
    // ADMIN - VIEW QUESTIONS
    // =====================================================

    @RequestMapping(
            value = "/admin/placement-questions",
            method = RequestMethod.GET
    )
    public String viewQuestions(

            @RequestParam("driveId")
            int driveId,

            Model model
    ) {

        // Get questions for selected placement drive
        List<PlacementQuestion> questions =
                questionDao.getQuestionsByDriveId(driveId);

        // Get drive details
        List<PlacementDrive> drives =
                driveDao.getAllDrives();

        PlacementDrive selectedDrive = null;

        for (PlacementDrive drive : drives) {

            if (drive.getDriveId() == driveId) {

                selectedDrive = drive;
                break;
            }
        }

        model.addAttribute(
                "questions",
                questions
        );

        model.addAttribute(
                "drive",
                selectedDrive
        );

        model.addAttribute(
                "driveId",
                driveId
        );

        return "viewPlacementQuestions";
    }
}