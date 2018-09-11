package com.shoes.mapper;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Permission;

public interface PermissionMapper {
	List<Permission> findAllPermission();
	Permission findByPerid(int perid);
	void modifyPermission(Permission permission);
	void deletePermission(int perid);
	void addPermission(Permission permission);
	Permission findByPername(String pername);
	List<Permission> selectPage(Page page);
}
