package com.lima.web.board.dao;

import com.lima.web.board.domain.BoardComments;

import java.util.HashMap;
import java.util.List;

public interface BoardCommentsDao {

    List<BoardComments> findAll(HashMap<String, Object> map) throws Exception;
    int insert(BoardComments boardComments) throws Exception;
    int countComments(int boardNo) throws Exception;
}
