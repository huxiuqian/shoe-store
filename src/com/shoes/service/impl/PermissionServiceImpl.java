package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.PermissionMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Permission;
import com.shoes.service.IPermissionService;

@Service("IPermissionService")
public class PermissionServiceImpl implements IPermissionService {

	@Autowired
	private PermissionMapper permissionMapper;

	@Override
	public List<Permission> findAllPermission() {
		return permissionMapper.findAllPermission();
	}

	@Override
	public Permission findByPerid(int perid) {
		return permissionMapper.findByPerid(perid);
	}

	@Override
	public void modifyPermission(Permission permission) {
		permissionMapper.modifyPermission(permission);		
	}

	@Override
	public void deletePermission(int perid) {
		permissionMapper.deletePermission(perid);
	}

	@Override
	public void addPermission(Permission permission) {
		permissionMapper.addPermission(permission);		
	}

	@Override
	public Permission findByPername(String pername) {
		return permissionMapper.findByPername(pername);
	}

	@Override
	public List<Permission> selectPage(Page page) {
		return permissionMapper.selectPage(page);
	}

}
