package com.shoes.mapper;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Admin;

public interface AdminMapper {
	Admin login(Admin admin);
	void add(Admin admin);
	Admin findByAcount(String acount);
	void modifyAdmin(Admin admin);
	List<Admin> findAll();
	Admin findByAid(int aid);
	List<Admin> selectPage(Page page);
	void deleteAdmin(int aid);
}
