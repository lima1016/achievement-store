package com.lima.web.member.domain;

import java.util.Date;
import java.util.Objects;

public class Deposit {

    private int memberNo;
    private int ham;
    private Date depositDate;

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

    public Date getDepositDate() {
        return depositDate;
    }

    public void setDepositDate(Date depositDate) {
        this.depositDate = depositDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Deposit deposit = (Deposit) o;
        return memberNo == deposit.memberNo &&
                ham == deposit.ham &&
                Objects.equals(depositDate, deposit.depositDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(memberNo, ham, depositDate);
    }

    @Override
    public String toString() {
        return "Deposit{" +
                "memberNo=" + memberNo +
                ", ham=" + ham +
                ", depositDate=" + depositDate +
                '}';
    }
}
