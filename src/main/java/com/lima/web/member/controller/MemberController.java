package com.lima.web.member.controller;

import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Resource
    private MemberService memberService;

    @GetMapping("list")
    public void selectList(Model model) throws Exception {
        List<Member> member = memberService.list();
        model.addAttribute("members", member);
    }
}
