package com.lima.web.member.controller;

import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Resource
    private MemberService memberService;

    // member list
    @GetMapping("list")
    public void selectList(Model model) throws Exception {
        List<Member> member = memberService.findAll();
        model.addAttribute("members", member);
    }

    // sign in & sign up page
    @GetMapping("signUpForm")
    public void signUp() throws ExecutionException {}

    // member sign up
    @PostMapping("signUp")
    public String add(Member member) throws Exception {
        memberService.insert(member);
        return "redirect:list";
    }

    // member sign in
    @PostMapping("signIn")
    public String signIn(String userId, String password) throws Exception {
        Member member = memberService.findByEmailPassword(userId, password);
        return "redirect:list";
    }
}
