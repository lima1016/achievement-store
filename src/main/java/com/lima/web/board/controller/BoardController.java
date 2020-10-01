package com.lima.web.board.controller;

import com.lima.web.board.domain.Board;
import com.lima.web.board.service.BoardService;
import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/board")
@SessionAttributes("loginUser")
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

    @GetMapping("form")
    public void form(@ModelAttribute("loginUser") Member loginUser, Model model) throws Exception {
        Member member = memberService.get(loginUser.getMemberNo());
        model.addAttribute("member", member);
    }

    /**
     *
     * @param board 보드의 값을 받아옴
     * @return add가 되면 index 주소로 리턴
     * @throws Exception
     */
    @PostMapping("add")
    public String insert(Board board) throws Exception {
        boardService.insert(board);
        return "redirect:../index";
    }
}
