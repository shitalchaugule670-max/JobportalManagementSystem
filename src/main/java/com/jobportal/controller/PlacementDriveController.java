package com.jobportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobportal.dao.PlacementDriveDao;
import com.jobportal.dao.PlacementQuestionDao;
import com.jobportal.entity.PlacementDrive;
import com.jobportal.entity.PlacementQuestion;

@Controller
public class PlacementDriveController {

    @Autowired
    private PlacementDriveDao placementDriveDao;

    @Autowired
    private PlacementQuestionDao placementQuestionDao;


    // =====================================================
    // STUDENT - PREVIOUS PLACEMENT DRIVES
    // =====================================================

    @GetMapping("/previousDrives")
    public String previousDrives(Model model) {

        List<PlacementDrive> drives =
                placementDriveDao.getAllDrives();

        model.addAttribute("drives", drives);

        return "previous_drives";
    }


    // =====================================================
    // STUDENT - QUESTIONS OF SELECTED DRIVE
    // =====================================================

    @GetMapping("/placementQuestions")
    public String placementQuestions(
            @RequestParam("id") int driveId,
            Model model) {

        System.out.println("Selected Drive ID = " + driveId);

        List<PlacementQuestion> questions =
                placementQuestionDao
                .getQuestionsByDriveId(driveId);

        System.out.println(
                "Questions Found = " + questions.size()
        );

        model.addAttribute(
                "questions",
                questions
        );

        model.addAttribute(
                "driveId",
                driveId
        );

        return "placement_questions";
    }
}
