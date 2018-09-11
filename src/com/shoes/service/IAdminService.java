package com.shoes.service;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Admin;

public interface IAdminService {
	Admin login(Admin admin);

	void add(Admin admin);

	Admin findByAcount(String acount);

	void modifyAdmin(Admin admin);

	List<Admin> findAll();

	Admin findByAid(int aid);

	void deleteAdmin(int aid);

	List<Admin> selectPage(Page page);
}
