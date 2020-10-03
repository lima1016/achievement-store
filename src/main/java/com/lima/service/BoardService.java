package com.lima.service;

import com.lima.web.board.domain.Board;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BoardService {

    List<Board> list() throws Exception;

    void insert(Board board) throws Exception;

    Board get(int boardNo) throws Exception;
}
