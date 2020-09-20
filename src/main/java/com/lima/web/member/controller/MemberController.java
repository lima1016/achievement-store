package com.lima.web.member.controller;

import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
    public String signIn(String userId, String password, HttpServletResponse response, HttpSession session) throws Exception {

        // 응답할 때 클라이언트가 입력한 이메일을 쿠키로 보낸다.
        Cookie cookie = new Cookie("userId", userId);
        cookie.setMaxAge(60 * 60 * 24 * 15);
        response.addCookie(cookie);
        Member member = memberService.findByEmailPassword(userId, password);

        if (member == null) {
            return "redirect:signUpForm";
        }
        session.setAttribute("loginUser", member);
        return "redirect:list";
    }

    @GetMapping("signOut")
    public String signOut(HttpSession session) throws Exception {
        session.invalidate();
        return "redirect:index";
    }

    // 메소드에 @ResponseBody 로 어노테이션이 되어 있다면 메소드에서 리턴되는 값은 View 를 통해서
    // 출력되지 않고 HTTP Response Body 에 직접 쓰여지게 됩니다.
    @GetMapping("idCheck")
    public @ResponseBody int idCheck(String userId) throws Exception {
        return memberService.userIdCheck(userId);
    }

    @GetMapping("emailCheck")
    public @ResponseBody int emailCheck(String email) throws Exception {
        return memberService.emailCheck(email);
    }
}
