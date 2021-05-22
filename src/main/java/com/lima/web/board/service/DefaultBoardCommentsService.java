package com.lima.web.board.service;

import com.lima.web.board.dao.BoardCommentsDao;
import com.lima.web.board.domain.BoardComments;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class DefaultBoardCommentsService implements BoardCommentsService {

    @Resource
    BoardCommentsDao boardCommentsDao;

    @Override
    public List<BoardComments> list(int boardNo, int pageNo, int pageSize) throws Exception {
        HashMap<String, Object> param = new HashMap<>();
        param.put("offset", (pageNo-1) * pageSize);
        param.put("pageSize", pageSize);
        param.put("boardNo", boardNo);
        return boardCommentsDao.findAll(param);
    }

    @Override
    public void insert(BoardComments boardComments) throws Exception {
        boardCommentsDao.insert(boardComments) ;
    }

    @Override
    public int commentsSize(int boardNo) throws Exception {
        return boardCommentsDao.countComments(boardNo);
    }
}
