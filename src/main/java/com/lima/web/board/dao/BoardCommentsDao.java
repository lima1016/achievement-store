package com.lima.web.board.dao;

import com.lima.web.board.domain.BoardComments;

import java.util.List;

public interface BoardCommentsDao {

    List<BoardComments> findAll(int boardNo) throws Exception;
    int insert(BoardComments boardComments) throws Exception;
}
