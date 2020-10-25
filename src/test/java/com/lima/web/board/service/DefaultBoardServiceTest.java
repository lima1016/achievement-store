package com.lima.web.board.service;

import com.lima.web.board.dao.BoardDao;
import com.lima.web.board.domain.Board;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DefaultBoardServiceTest {

    @Autowired
    BoardDao boardDao;

    @Test
    public void list() {
    }

    @Test
    public void insert() {
        Board board = new Board();
        board.setTitle("단위테스트1 해봄");
        board.setContents("이것저것 요것저것 저것요것");
        board.setGoal("나는 일찍 잠들것이다.");
        board.setGoalHam("1000");
        board.setGoalImg("C:\\Users\\kimyo\\OneDrive\\바탕 화면\\study.jpg");
        board.setMemberNo(3);
        boardDao.insert(board);
    }

    @Test
    public void get() {
    }

    @Test
    public void showMyBoardList() {
    }

    @Test
    public void deleteByBoardNo() {
    }

    @Test
    public void update() {
    }

    @Test
    public void failMission() {
    }

    @Test
    public void successMission() {
    }
}