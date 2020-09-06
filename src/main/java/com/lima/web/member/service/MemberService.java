package com.lima.web.member.service;

import com.lima.web.member.dao.MemberDao;
import com.lima.web.member.domain.Member;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class MemberService {

    @Resource
    MemberDao memberDao;

    public List<Member> findAll() throws Exception {
        return memberDao.findAll();
    }

    public void insert(Member member) throws Exception {
        memberDao.insert(member);
    }

    public Member findByEmailPassword(String email, String password) throws Exception {
        HashMap<String, Object> map = new HashMap<>();
        map.put("email", email );
        map.put("password", password);
        Member member = memberDao.findByEmailPassword(map);

        if (member == null) {
            throw new Exception("member 없음.");
        }

        return member;
    }
}
