package com.shoes.service;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Type;

public interface ITypeService {
	List<Type> findTypePage(Page page);
	Type findByTid(int tid);
	void modifyType(Type type);
	void addType(Type type);
}
