package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.AdminMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Admin;
import com.shoes.service.IAdminService;

@Service("IAdminService")
public class AdminServiceImpl implements IAdminService {
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public Admin login(Admin admin) {
		return adminMapper.login(admin);
	}

	@Override
	public void add(Admin admin) {
		adminMapper.add(admin);
	}

	@Override
	public Admin findByAcount(String acount) {
		return adminMapper.findByAcount(acount);
	}

	@Override
	public void modifyAdmin(Admin admin) {
		adminMapper.modifyAdmin(admin);
	}

	@Override
	public List<Admin> findAll() {
		return adminMapper.findAll();
	}

	@Override
	public Admin findByAid(int aid) {
		return adminMapper.findByAid(aid);
	}

	@Override
	public void deleteAdmin(int aid) {
		adminMapper.deleteAdmin(aid);
	}

	@Override
	public List<Admin> selectPage(Page page) {
		return adminMapper.selectPage(page);
	}
}
