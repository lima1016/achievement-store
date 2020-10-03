package com.lima.web.board.service;

import com.lima.service.BoardCommentsService;
import com.lima.web.board.dao.BoardCommentsDao;
import com.lima.web.board.domain.BoardComments;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DefaultBoardCommentsService implements BoardCommentsService {

    @Resource
    BoardCommentsDao boardCommentsDao;

    @Override
    public List<BoardComments> list(int boardNo) throws Exception {
        return boardCommentsDao.findAll(boardNo);
    }

    @Override
    public void insert(BoardComments boardComments) throws Exception {
        boardCommentsDao.insert(boardComments) ;
    }
}
