package com.lima.web.studygroup.dao;

import com.lima.web.studygroup.domain.StudyGroup;

import java.util.List;

public interface StudyGroupDao {

  void insert(StudyGroup studyGroup) throws Exception;
  List<StudyGroup> findAll() throws Exception;

}
