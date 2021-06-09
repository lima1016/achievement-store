package com.lima.web.studygroup.controller;

import com.lima.web.board.domain.Board;
import com.lima.web.member.domain.Member;
import com.lima.web.studygroup.domain.StudyGroup;
import com.lima.web.studygroup.service.StudyGroupService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/studygroup")
@SessionAttributes("loginUser")
public class StudyGroupController {

  @Resource
  StudyGroupService studyGroupService;

  String uploadDir;

  public StudyGroupController(ServletContext sc) {
    uploadDir = sc.getRealPath("/upload/studyGroup");
  }
  private String writeFile (MultipartFile file) throws Exception {
    if (file.isEmpty())
      return null;
    String filename = UUID.randomUUID().toString() + ".jpg";
    file.transferTo(new File(uploadDir + "/" + filename));
    System.out.println("uploadDir@@@@@@@@@@@@@@@@@@@ = " + uploadDir);
    return filename;
  }

  @GetMapping("list")
  public void findAll(Model model) throws Exception {
    List<StudyGroup> studyGroups = studyGroupService.findAll();
    model.addAttribute("studyGroups", studyGroups);
  }

  @GetMapping("form")
  public void form() {
  }

  @PostMapping("add")
  public String insert(StudyGroup studyGroup, @ModelAttribute("loginUser") Member loginUser, MultipartFile file) throws Exception {
    studyGroup.setMemberNo(loginUser.getMemberNo());
    studyGroup.setImg(writeFile(file));
    studyGroupService.insert(studyGroup);
    return "redirect:list";
  }

}
