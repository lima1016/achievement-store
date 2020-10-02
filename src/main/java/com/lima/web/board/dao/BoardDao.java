package com.lima.web.board.dao;

import com.lima.web.board.domain.Board;

import java.util.List;

public interface BoardDao {

    List<Board> findAll() throws Exception;

    int insert(Board board) throws Exception;
}
