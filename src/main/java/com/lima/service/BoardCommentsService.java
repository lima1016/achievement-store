package com.lima.service;

import com.lima.web.board.domain.BoardComments;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BoardCommentsService {

    List<BoardComments> list(int boardNo) throws Exception;
    void insert(BoardComments boardComments) throws Exception;
}
