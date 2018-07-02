package com.atcgt.service.impl;

import com.atcgt.dao.UserDao;
import com.atcgt.dao.impl.UserDaoImpl;
import com.atcgt.entity.User;
import com.atcgt.service.UserService;

public class UserServiceImpl implements UserService {
   private UserDao userDao=new UserDaoImpl();
	@Override
	public User login(String username) {
		return userDao.getUser(username);
	}
	@Override
	public int insert(User entity) {
		return userDao.insert(entity);
	}

}
