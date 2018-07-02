package com.atcgt.test;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.atcgt.entity.QuestionBank;
import com.atcgt.entity.User;
import com.atcgt.service.QuestionBankService;
import com.atcgt.service.UserService;
import com.atcgt.service.impl.QuestionBankServiceImpl;
import com.atcgt.service.impl.UserServiceImpl;
import com.atcgt.utils.DBUtils;


public class Demo {

	
	public static void test1() {
     SqlSession sqlSession = DBUtils.getSqlSession();
		
		User u = sqlSession.selectOne("getOneByName", "aaa");
		
		System.out.println(u);
	}
	public static void test2() {
		UserService  userService=new UserServiceImpl();
		User user = userService.login("aaa");
		System.out.println(user);
	}
	public static void test3() {
		UserService  userService=new UserServiceImpl();
		User u=new User();
		u.setUsername("yeye");
		u.setPasswd("36363");
		int a = userService.insert(u);
		if(a>0) {
			System.out.println("插入成功！！！");
		}else {
			System.out.println("插入失败！！！");
		}
	}
	
	public static void main(String[] args) {
    /*   List<QuestionBank> newList=new ArrayList<>();
       QuestionBankService  questionBankService =new QuestionBankServiceImpl();
       List<QuestionBank> chooseList = questionBankService.getlist1();
	  for (int i = 0; i <10; i++) {
	    	newList.add(chooseList.get((int) (Math.random()*chooseList.size())));
		}	
		
	    for (QuestionBank q : newList) {
			System.out.println(q);
		}*/
		//test3();
		SqlSession sqlSession=null;
		sqlSession = DBUtils.getSqlSession();
		int a = sqlSession.delete("deleteQuest", 1);
		if(a>0) {
			System.out.println("删除成功");
		}else {
			System.out.println("删除失败");
		}
		sqlSession.commit();
		sqlSession.close();
		
	}
		
}














