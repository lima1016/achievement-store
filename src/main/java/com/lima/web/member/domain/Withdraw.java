package com.lima.web.member.domain;

import java.util.Date;
import java.util.Objects;

public class Withdraw {

    private int memberNo;
    private int ham;
    private Date withdrawDate;

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public int getHam() {
        return ham;
    }

    public void setHam(int ham) {
        this.ham = ham;
    }

    public Date getWithdrawDate() {
        return withdrawDate;
    }

    public void setWithdrawDate(Date withdrawDate) {
        this.withdrawDate = withdrawDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Withdraw withdraw = (Withdraw) o;
        return memberNo == withdraw.memberNo &&
                ham == withdraw.ham &&
                Objects.equals(withdrawDate, withdraw.withdrawDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(memberNo, ham, withdrawDate);
    }

    @Override
    public String toString() {
        return "Withdraw{" +
                "memberNo=" + memberNo +
                ", ham=" + ham +
                ", withdrawDate=" + withdrawDate +
                '}';
    }
}
