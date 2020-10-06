package com.lima.web.board.service;

import com.lima.service.BoardService;
import com.lima.web.board.dao.BoardDao;
import com.lima.web.board.domain.Board;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DefaultBoardService implements  BoardService {

    @Resource
    BoardDao boardDao;

    @Override
    public List<Board> list() throws Exception{
        return boardDao.findAll();
    }
    @Override
    public void insert(Board board) throws Exception{
        boardDao.insert(board);
    }
    @Override
    public Board get(int boardNo) throws Exception {
        return boardDao.findBy(boardNo);
    }

    @Override
    public List<Board> findAllByMember(int memberNo) throws Exception {
        return boardDao.findAllByMember(memberNo);
    }

    @Override
    public void deleteByBoardNo(int boardNo) throws Exception {
        boardDao.deleteByBoardNo(boardNo);
    }

}
