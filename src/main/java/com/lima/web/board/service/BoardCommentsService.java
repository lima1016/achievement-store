package com.lima.web.board.service;

import com.lima.web.board.domain.BoardComments;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BoardCommentsService {

    List<BoardComments> list(int boardNo, int pageNo, int pageSize) throws Exception;
    void insert(BoardComments boardComments) throws Exception;
    int commentsSize(int boardNo) throws Exception;
}
