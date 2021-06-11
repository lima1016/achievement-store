package com.lima.web.studygroup.controller;

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
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
    uploadDir = sc.getRealPath("/upload/studygroup");
  }

  private String writeFile(MultipartFile file) throws Exception {
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
    studyGroups.forEach(r -> r.setPeople(studyGroupService.joinStudyCnt(r.getStudyNo()) + 1));
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

  @GetMapping("detail")
  public void detail(int studyNo, Model model) throws ParseException {
    StudyGroup studyGroup = studyGroupService.findBy(studyNo);
    DateFormat dateFormat = new SimpleDateFormat("yyy-MM-dd");
    Date date = dateFormat.parse(studyGroup.getEndDate());
    studyGroup.setPeople(studyGroupService.joinStudyCnt(studyNo) + 1);

    model.addAttribute("endDate", date);
    model.addAttribute("studyGroup", studyGroup);
  }

  @PostMapping("joinStudy")
  public String joinStudy(int studyNo, int memberNo) {
    System.out.println("studyNo = " + studyNo);
    System.out.println("loginUser.getMemberNo() == " + memberNo);
    studyGroupService.joinStudy(studyNo, memberNo);
    return "redirect:list";
  }
}
