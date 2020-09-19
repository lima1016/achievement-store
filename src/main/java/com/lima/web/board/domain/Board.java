package com.lima.web.board.domain;

import com.lima.web.member.domain.Member;

import java.util.List;
import java.util.Objects;

public class Board {

    private int boardNo;
    private int memberNo;
    private String title;
    private String contents;
    private String goal;
    private String goal_ham;
    private Member member;
    private List<Member> members;

    public int getBoardNo() {
        return boardNo;
    }

    public void setBoardNo(int boardNo) {
        this.boardNo = boardNo;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getGoal() {
        return goal;
    }

    public void setGoal(String goal) {
        this.goal = goal;
    }

    public String getGoal_ham() {
        return goal_ham;
    }

    public void setGoal_ham(String goal_ham) {
        this.goal_ham = goal_ham;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public List<Member> getMembers() {
        return members;
    }

    public void setMembers(List<Member> members) {
        this.members = members;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Board board = (Board) o;
        return boardNo == board.boardNo &&
                memberNo == board.memberNo &&
                Objects.equals(title, board.title) &&
                Objects.equals(contents, board.contents) &&
                Objects.equals(goal, board.goal) &&
                Objects.equals(goal_ham, board.goal_ham);
    }

    @Override
    public int hashCode() {
        return Objects.hash(boardNo, memberNo, title, contents, goal, goal_ham);
    }

    @Override
    public String toString() {
        return "Board{" +
                "boardNo=" + boardNo +
                ", memberNo=" + memberNo +
                ", title='" + title + '\'' +
                ", contents='" + contents + '\'' +
                ", goal='" + goal + '\'' +
                ", goal_ham='" + goal_ham + '\'' +
                '}';
    }
}
