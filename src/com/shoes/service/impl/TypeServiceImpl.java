package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.TypeMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Type;
import com.shoes.service.ITypeService;

@Service
public class TypeServiceImpl implements ITypeService {
	@Autowired
	private TypeMapper typeMapper;

	@Override
	public List<Type> findTypePage(Page page) {
		return typeMapper.findTypePage(page);
	}

	@Override
	public Type findByTid(int tid) {
		return typeMapper.findByTid(tid);
	}

	@Override
	public void modifyType(Type type) {
		typeMapper.modifyType(type);
	}

	@Override
	public void addType(Type type) {
		typeMapper.addType(type);
	}
}
