package com.lima.web.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/auth")
public class AuthController {

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
}
