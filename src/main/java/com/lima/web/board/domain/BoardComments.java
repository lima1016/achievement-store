package com.lima.web.board.domain;

import com.lima.web.member.domain.Member;

import java.util.Date;
import java.util.Objects;

public class BoardComments {

    private int commentsNo;
    private int memberNo;
    private int boardNo;
    private String comments;
    private Date commentsDate;

    private Member member;
    private Board board;

    public int getCommentsNo() {
        return commentsNo;
    }

    public void setCommentsNo(int commentsNo) {
        this.commentsNo = commentsNo;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNol) {
        this.memberNo = memberNol;
    }

    public int getBoardNo() {
        return boardNo;
    }

    public void setBoardNo(int boardNo) {
        this.boardNo = boardNo;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Date getCommentsDate() {
        return commentsDate;
    }

    public void setCommentsDate(Date commentsDate) {
        this.commentsDate = commentsDate;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Board getBoard() {
        return board;
    }

    public void setBoard(Board board) {
        this.board = board;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BoardComments that = (BoardComments) o;
        return commentsNo == that.commentsNo &&
                memberNo == that.memberNo &&
                boardNo == that.boardNo &&
                Objects.equals(comments, that.comments) &&
                Objects.equals(commentsDate, that.commentsDate) &&
                Objects.equals(member, that.member) &&
                Objects.equals(board, that.board);
    }

    @Override
    public int hashCode() {
        return Objects.hash(commentsNo, memberNo, boardNo, comments, commentsDate, member, board);
    }

    @Override
    public String toString() {
        return "BoardComments{" +
                "commentsNo=" + commentsNo +
                ", memberNol=" + memberNo +
                ", boardNo=" + boardNo +
                ", comments='" + comments + '\'' +
                ", commentsDate=" + commentsDate +
                ", member=" + member +
                ", board=" + board +
                '}';
    }
}
