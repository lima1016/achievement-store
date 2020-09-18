package com.lima.web.member.domain;

import java.util.Objects;

public class Member {

    private int memberNo;
    private String id;
    private String name;
    private String email;
    private String password;
    // 웹싸이트에서 사용하는 돈 (원)
    private int ham;

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getHam() {
        return ham;
    }

    public void setHam(int ham) {
        this.ham = ham;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Member member = (Member) o;
        return memberNo == member.memberNo &&
                ham == member.ham &&
                Objects.equals(id, member.id) &&
                Objects.equals(name, member.name) &&
                Objects.equals(email, member.email) &&
                Objects.equals(password, member.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(memberNo, id, name, email, password, ham);
    }

    @Override
    public String toString() {
        return "Member{" +
                "memberNo=" + memberNo +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", ham=" + ham +
                '}';
    }
}
