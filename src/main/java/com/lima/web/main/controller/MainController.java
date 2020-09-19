package com.lima.web.main.controller;

import com.lima.web.board.domain.Board;
import com.lima.web.board.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/")
public class MainController {

    @Resource
    BoardService boardService;

    @GetMapping("index")
    public void index(Model model) throws  Exception{
        List<Board> board = boardService.list();
        model.addAttribute("boards", board);
    }
}
