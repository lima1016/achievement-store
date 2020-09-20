package com.lima.web.main.controller;

import com.lima.web.board.domain.Board;
import com.lima.web.board.service.BoardService;
import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/")
public class MainController {

    @Resource
    BoardService boardService;

    @Resource
    MemberService memberService;

    @GetMapping("index")
    public void index(Model model, HttpSession session) throws  Exception{
        if(session.getAttribute("loginUser") != null){
            Member member = memberService.get(((Member)session.getAttribute("loginUser")).getMemberNo());
        }
        List<Board> boards = boardService.list();
        model.addAttribute("boards", boards);
    }
}
