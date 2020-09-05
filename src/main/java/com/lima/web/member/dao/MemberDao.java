package com.lima.web.member.dao;

import com.lima.web.member.domain.Member;

import java.util.List;

public interface MemberDao {

    List<Member> findAll() throws Exception;
}
