package com.atcgt.service;

import com.atcgt.entity.User;

public interface UserService {
	
   public User login(String username);
   
   public int insert(User user);
}
