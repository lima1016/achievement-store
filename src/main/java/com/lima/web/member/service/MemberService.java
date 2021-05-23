package com.lima.web.member.service;

import com.lima.web.member.domain.Deposit;
import com.lima.web.member.domain.Member;
import com.lima.web.member.domain.Withdraw;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MemberService {

  List<Member> findAll() throws Exception;

  void insert(Member member) throws Exception;

  Member findByEmailPassword(String id, String password) throws Exception;

  int userIdCheck(String userId) throws Exception;

  int emailCheck(String email) throws Exception;

  Member get(String userId, String password) throws Exception;

  Member get(int memberNo) throws Exception;

  void hamUpdate(int ham, int memberNo) throws Exception;

  void updateMyInfo(Member member) throws Exception;

  void findAllHamHistory(int memberNo) throws Exception;

  void insertDeposit(Deposit deposit) throws Exception;

  void insertWithdraw(Withdraw withdraw) throws Exception;

  int countMember() throws Exception;
}
