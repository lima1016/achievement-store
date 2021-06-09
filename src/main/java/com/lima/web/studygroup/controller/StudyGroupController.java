package com.lima.web.studygroup.controller;

import com.lima.web.studygroup.domain.StudyGroup;
import com.lima.web.studygroup.service.StudyGroupService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/studygroup")
@SessionAttributes("loginUser")
public class StudyGroupController {

  @Resource
  StudyGroupService studyGroupService;

  @GetMapping("list")
  public void findAll(Model model) throws Exception {
    List<StudyGroup> studyGroups = studyGroupService.findAll();
    model.addAttribute("studyGroups", studyGroups);
  }

  @GetMapping("form")
  public void form() {
  }

  @PostMapping("add")
  public void insert(StudyGroup studyGroup) throws Exception {
    studyGroupService.insert(studyGroup);
  }

}
