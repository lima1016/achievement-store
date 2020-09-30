package com.lima.web.board.controller;

import com.lima.web.board.domain.Board;
import com.lima.web.board.service.BoardService;
import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Resource
    BoardService boardService;

    @Resource
    MemberService memberService;

    @GetMapping("list")
    public void list(Model model) throws Exception {
        List<Board> board = boardService.list();
        model.addAttribute("boards", board);
    }

    @GetMapping("boardForm")
    public void createBoardForm(@ModelAttribute("loginUser") Member loginUser, Model model) throws Exception {
        System.out.println("member.getMemberNo() = " + loginUser.getMemberNo());
        Member member = memberService.get(loginUser.getMemberNo());
        model.addAttribute("member", member);
    }

    @PostMapping("add")
    public String insertBoard(Board board) throws Exception {
        boardService.insertBoard(board);
        return "redirect:../index";
    }
}
