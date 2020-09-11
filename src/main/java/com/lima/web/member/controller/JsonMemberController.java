package com.lima.web.member.controller;

import com.lima.common.JsonResult;
import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController("JsonMemberController")
@RequestMapping("/json/member")
public class JsonMemberController {

    @Resource
    MemberService memberService;

    @PostMapping("logIn")
    public JsonResult login(String userId, String password) throws Exception {

        try {
            System.out.println("여기는 컨트롤러: " + userId);
            System.out.println("여기도 컨트롤러: " + password);
            Member member = memberService.get(userId, password);
            if (member == null) {
                return new JsonResult().setResult(JsonResult.FAILURE);
            }
            return new JsonResult().setState(JsonResult.SUCCESS).setResult(member);
        } catch (Exception e) {
            return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
        }
    }

}
