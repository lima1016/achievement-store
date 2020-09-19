package com.lima.web.board.controller;

import com.lima.web.board.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Resource
    BoardService boardService;

//    @GetMapping("list")
//    public void list(Model model) throws Exception {
//        List<Board> board = boardService.list();
//        model.addAttribute("boards", board);
//    }
}
