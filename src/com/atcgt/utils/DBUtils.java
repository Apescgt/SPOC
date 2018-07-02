package com.atcgt.utils;
import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBUtils {
   
	public  static  SqlSession  getSqlSession() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			  SqlSession sqlSession = sqlSessionFactory.openSession();
			  return sqlSession;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
