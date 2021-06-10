package com.lima.web.studygroup.dao;

import com.lima.web.studygroup.domain.StudyGroup;

import java.util.HashMap;
import java.util.List;

public interface StudyGroupDao {

  void insert(StudyGroup studyGroup) throws Exception;
  List<StudyGroup> findAll() throws Exception;
  StudyGroup findBy(int studyNo);
  // 스터디 번호, 로그인한 유저 번호
  void joinStudy(HashMap<String, Integer> no);
}
