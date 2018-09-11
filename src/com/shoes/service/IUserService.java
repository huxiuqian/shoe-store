package com.shoes.service;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.User;

public interface IUserService {
	User login(User user);
	void regieter(User user);
	User findByUaccount(String account);
	List<User> findAllUser();
	User findByUid(int uid);
	void modifyUser(User user);
	void deleteUser(int uid);
	List<User> selectPage(Page page);
}
