package com.lima.web.member.service;

import com.lima.web.member.dao.MemberDao;
import com.lima.web.member.domain.Deposit;
import com.lima.web.member.domain.Member;
import com.lima.web.member.domain.Withdraw;
import lombok.With;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;


public class MemberServiceImpl implements MemberService{

    @Resource
    MemberDao memberDao;

    @Override
    public List<Member> findAll() throws Exception {
        return memberDao.findAll();
    }

    @Override
    public void insert(Member member) throws Exception {
        memberDao.insert(member);
    }

    @Override
    public Member findByEmailPassword(String id, String password) throws Exception {
        HashMap<String, Object> map = new HashMap<>();
        map.put("id", id);
        map.put("password", password);

        Member member = memberDao.findByUserIdPassword(map);

        return member;
    }

    @Override
    public int userIdCheck(String userId) throws Exception {
        return memberDao.checkUserId(userId);
    }

    @Override
    public int emailCheck(String email) throws Exception {
        return memberDao.checkEmail(email);
    }

    @Override
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

    @Override
    public Member get(int memberNo) throws Exception {
        return memberDao.findBy(memberNo);
    }

    /**
     *
     * @param ham
     * @param memberNo
     * @throws Exception
     */
    @Override
    public void hamUpdate(int ham, int memberNo) throws Exception {
        Member member = memberDao.findBy(memberNo);
        int newHam = member.getHam() - ham;
        member.setHam(newHam);
        memberDao.hamUpdate(member);
    }

    @Override
    public void updateMyInfo(Member member) throws Exception {
        memberDao.updateMyInfo(member);
    }

    @Override
    public void findAllHamHistory(int memberNo) throws Exception{
        memberDao.findAllHamHistory(memberNo);
    }

    @Override
    public void insertDeposit(Deposit deposit) throws Exception{
        memberDao.insertDeposit(deposit);
    }

    @Override
    public void insertWithdraw(Withdraw withdraw) throws Exception{
        memberDao.insertWithdraw(withdraw);
    }

    @Override
    public int countMember() throws Exception {
        return memberDao.countMember();
    }
}
