package com.lima.web.board.controller;

import com.lima.service.BoardCommentsService;
import com.lima.service.BoardService;
import com.lima.web.board.domain.Board;
import com.lima.web.board.domain.BoardComments;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/board")
@SessionAttributes("loginUser")
public class BoardController {

    @Resource
    BoardService boardService;

    @Resource
    BoardCommentsService boardCommentsService;

    @Resource
    MemberService memberService;

    @GetMapping("list")
    public void list(Model model) throws Exception {
        List<Board> board = boardService.list();
        model.addAttribute("boards", board);
    }

    @GetMapping("form")
    public void form() throws Exception {
    }

    @GetMapping("detail")
    public void detail(int boardNo, Model model, @RequestParam(defaultValue = "1") int pageNo, @RequestParam(defaultValue = "5") int pageSize) throws Exception {
        // 해당 보드에 있는 모든 코멘트들 갯수
        int size = boardCommentsService.commentsSize(boardNo);

        // 페이징처리에서 보여주는 숫자
        int totalPage = size / pageSize; // size가 18일때 18 / 3 = 6
        if (size % pageSize > 0) {
            totalPage++;
        }

        Board board = boardService.get(boardNo);
        List<BoardComments> boardComments = boardCommentsService.list(boardNo, pageNo, pageSize);
        model.addAttribute("boardComments", boardComments);
        model.addAttribute("board", board);

        model.addAttribute("pageNo", pageNo);
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("size", size);
        model.addAttribute("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
        model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
    }

    /**
     *
     * @param httpServletRequest jsp에서 name이 goalHam인 값을 받음
     * @param board 보드의 값을 받아옴
     * @return add가 되면 index 주소로 리턴
     * @throws Exception
     */
    @PostMapping("add")
    public String insert(HttpServletRequest httpServletRequest, Board board) throws Exception {
        int ham = Integer.parseInt(httpServletRequest.getParameter("goalHam"));

        memberService.hamUpdate(ham, board.getMemberNo());
        boardService.insert(board);
        return "redirect:../index";
    }

    @GetMapping("delete")
    public String delete(int boardNo) throws Exception {
        boardService.deleteByBoardNo(boardNo);
        return "redirect:../index";
    }

    @PutMapping("done")
    public String doneTask(int boardNo) throws Exception {
        // TODO: 1) 성공 - 내기 건 hamx2 해줘야함. 2) isSuccess 1로 바꿔야함.
        return "redirect:../index";
    }
}
