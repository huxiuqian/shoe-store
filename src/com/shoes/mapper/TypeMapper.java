package com.shoes.mapper;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Type;

public interface TypeMapper {
	List<Type> findTypePage(Page page);
	Type findByTid(int tid);
	void modifyType(Type type);
	void addType(Type type);
}
