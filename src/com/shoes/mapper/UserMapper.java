package com.shoes.mapper;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.User;

public interface UserMapper {
	User login(User user);
	void register(User user);
	User findByUaccount(String account);
	List<User> findAllUser();
	User findByUid(int uid);
	void modifyUser(User user);
	void deleteUser(int uid);
	List<User> selectPage(Page page);
}
