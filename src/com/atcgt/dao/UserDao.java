package com.atcgt.dao;

import com.atcgt.entity.User;

public interface UserDao {
	
   public User getUser(String username);
   
   public int insert(User entity);
   
}
