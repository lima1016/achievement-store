package com.lima.web.board.service;

import com.lima.web.board.dao.BoardDao;
import com.lima.web.board.domain.Board;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BoardService {

    @Resource
    BoardDao boardDao;

    public List<Board> list() throws Exception{
        return boardDao.findAll();
    }
}
