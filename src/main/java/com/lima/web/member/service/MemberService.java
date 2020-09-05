package com.lima.web.member.service;

import com.lima.web.member.dao.MemberDao;
import com.lima.web.member.domain.Member;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MemberService {

    @Resource
    MemberDao memberDao;

    public List<Member> list() throws Exception {
        return memberDao.findAll();
    }
}
