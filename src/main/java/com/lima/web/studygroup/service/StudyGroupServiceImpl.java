package com.lima.web.studygroup.service;

import com.lima.web.studygroup.dao.StudyGroupDao;
import com.lima.web.studygroup.domain.StudyGroup;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudyGroupServiceImpl implements StudyGroupService{

  @Resource
  StudyGroupDao studyGroupDao;

  @Override
  public void insert(StudyGroup studyGroup) throws Exception {
    studyGroupDao.insert(studyGroup);
  }

  @Override
  public List<StudyGroup> findAll() throws Exception {
    return studyGroupDao.findAll();
  }
}
