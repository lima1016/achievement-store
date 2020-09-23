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

    public Member findByEmailPassword(String id, String password) throws Exception {
        HashMap<String, Object> map = new HashMap<>();
        map.put("id", id);
        map.put("password", password);

        Member member = memberDao.findByUserIdPassword(map);

        return member;
    }

    public int userIdCheck(String userId) throws Exception {
        return memberDao.checkUserId(userId);
    }

    public int emailCheck(String email) throws Exception {
        return memberDao.checkEmail(email);
    }

    public Member get(String userId, String password) throws Exception {
        HashMap<String, Object> map = new HashMap<>();
        map.put("userId", userId);
        map.put("password", password);
        Member member = memberDao.findByUserIdPassword(map);
        if (member == null) {
            throw new Exception("맴버 없음.");
        }
        return member;
    }

    public Member get(int memberNo) throws Exception {
        Member member = memberDao.findBy(memberNo);
        return member;
    }
}
