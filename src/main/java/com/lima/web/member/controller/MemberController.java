package com.lima.web.member.controller;

import com.lima.service.BoardService;
import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Controller
@RequestMapping("/member")
@SessionAttributes("loginUser")
public class MemberController {

    @Resource
    private MemberService memberService;

    @Resource
    private BoardService boardService;

    @GetMapping("mypage")
    public void doMypage() throws Exception {

    }

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
        return "redirect:signUpForm";
    }

    /**
     * @param id 유저가 입력한 아이디 값.
     * @param password 유저가 입력한 비밀번호 값.
     * @param httpServletResponse 쿠키에 아이디의 정보를 잠깐 저장하여 나중에 들어왔을때 아이디의 정보가 남을 수 있도록 만듬..(정확히 모르겠음)
     * @param httpSession 유저의 정보를 loginUser 라는 이름으로 담음.
     * @return 로그인이 성공하면 index로 보냄.
     * @throws Exception
     */
    @PostMapping("signIn")
    public String signIn(String id, String password, HttpServletResponse httpServletResponse, HttpSession httpSession) throws Exception {

        // 응답할 때 클라이언트가 입력한 이메일을 쿠키로 보낸다.
        Cookie cookie = new Cookie("id", id);
        cookie.setMaxAge(60 * 60 * 24 * 15);
        httpServletResponse.addCookie(cookie);
        Member member = memberService.findByEmailPassword(id, password);

        if (member == null) {
            System.out.println("없니?");
            return "redirect:signUpForm";
        }

        httpSession.setAttribute("loginUser", member);
        return "redirect:../index";
    }

    /**
     * @param session session에 남아있는 로그인한 유저의 값을 지우기 위하여 사용.
     * @return 정상적으로 signOut이 되면 index로 돌아감.
     * @throws Exception
     */
    @GetMapping("signOut")
    public String signOut(HttpSession session) throws Exception {
        session.invalidate();
        return "redirect:../index";
    }

    // 메소드에 @ResponseBody 로 어노테이션이 되어 있다면 메소드에서 리턴되는 값은 View 를 통해서
    // 출력되지 않고 HTTP Response Body 에 직접 쓰여지게 됩니다.

    /**
     * @param id 유저가 입력한 아이디 값.
     * @return 입력받은 id로 DB에 해당 아이디가 있는지 체크.
     * @throws Exception
     */
    @GetMapping("idCheck")
    public @ResponseBody int idCheck(String id) throws Exception {
        return memberService.userIdCheck(id);
    }

    /**
     * @param email 유저가 입력한 email값.
     * @return email로 DB에 있는 email인지 서비스로 체크.
     * @throws Exception
     */
    @GetMapping("emailCheck")
    public @ResponseBody int emailCheck(String email) throws Exception {
        return memberService.emailCheck(email);
    }

}
