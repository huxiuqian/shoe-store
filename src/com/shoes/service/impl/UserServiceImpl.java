package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.UserMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.User;
import com.shoes.service.IUserService;

@Service("IUserService")
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User login(User user) {
		
		return userMapper.login(user);
	}

	@Override
	public void regieter(User user) {
		userMapper.register(user);
	}

	@Override
	public User findByUaccount(String account) {
		return userMapper.findByUaccount(account);
	}

	@Override
	public List<User> findAllUser() {
		return userMapper.findAllUser();
	}

	@Override
	public User findByUid(int uid) {
		return userMapper.findByUid(uid);
	}

	@Override
	public void modifyUser(User user) {
		userMapper.modifyUser(user);		
	}

	@Override
	public void deleteUser(int uid) {
		userMapper.deleteUser(uid);		
	}

	@Override
	public List<User> selectPage(Page page) {
		return userMapper.selectPage(page);
	}
}
