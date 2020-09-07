package com.lima.web.member.dao;

import com.lima.web.member.domain.Member;

import java.util.List;
import java.util.Map;

public interface MemberDao {

    List<Member> findAll() throws Exception;
    void insert(Member member) throws Exception;
    Member findByUserIdPassword(Map<String, Object> map) throws Exception;
}
