package com.lima.web.studygroup.service;

import com.lima.web.studygroup.domain.StudyGroup;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface StudyGroupService {

  void insert(StudyGroup studyGroup) throws Exception;

  List<StudyGroup> findAll() throws Exception;

  StudyGroup findBy(int studyNo);

  void joinStudy(int studyNo, int memberNo);

  int joinStudyCnt(int studyNo);
}
