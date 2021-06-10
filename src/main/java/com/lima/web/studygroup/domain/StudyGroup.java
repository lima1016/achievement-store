package com.lima.web.studygroup.domain;

import com.lima.web.member.domain.Member;

import java.util.Date;
import java.util.Objects;

public class StudyGroup {

  private int studyNo;
  // 스터디 만든이
  private int memberNo;
  private String title;
  private String contents;
  private String endDate;
  private Date regDate;
  private String img;
  // 스터디를 신청한 사람 수
  // default = 1
  private int people;
  // 스터디장이 받고 싶은 사람 수
  private int maxPeople;

  private Member member;

  public Member getMember() {
    return member;
  }

  public void setMember(Member member) {
    this.member = member;
  }

  public int getMaxPeople() {
    return maxPeople;
  }

  public void setMaxPeople(int maxPeople) {
    this.maxPeople = maxPeople;
  }

  @Override
  public String toString() {
    return "StudyGroup{" +
        "studyNo=" + studyNo +
        ", memberNo=" + memberNo +
        ", title='" + title + '\'' +
        ", contents='" + contents + '\'' +
        ", endDate='" + endDate + '\'' +
        ", regDate='" + regDate + '\'' +
        ", img='" + img + '\'' +
        ", people=" + people +
        '}';
  }

  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }

  public int getStudyNo() {
    return studyNo;
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

  public String getEndDate() {
    return endDate;
  }

  public void setEndDate(String endDate) {
    this.endDate = endDate;
  }

  public Date getRegDate() {
    return regDate;
  }

  public void setRegDate(Date regDate) {
    this.regDate = regDate;
  }

  public int getPeople() {
    return people;
  }

  public void setPeople(int people) {
    this.people = people;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    StudyGroup that = (StudyGroup) o;
    return studyNo == that.studyNo && memberNo == that.memberNo && people == that.people && maxPeople == that.maxPeople && Objects.equals(title, that.title) && Objects.equals(contents, that.contents) && Objects.equals(endDate, that.endDate) && Objects.equals(regDate, that.regDate) && Objects.equals(img, that.img) && Objects.equals(member, that.member);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyNo, memberNo, title, contents, endDate, regDate, img, people, maxPeople, member);
  }
}
