package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.BrandMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Brand;
import com.shoes.service.IBrandService;

@Service
public class BrandServiceImpl implements IBrandService {
	@Autowired
	private BrandMapper brandMapper;
	
	@Override
	public List<Brand> findBrandPage(Page page) {
		return brandMapper.findBrandPage(page);
	}

	@Override
	public void modifyBrand(Brand brand) {
		brandMapper.modifyBrand(brand);
	}

	@Override
	public Brand findByBid(int bid) {
		return brandMapper.findByBid(bid);
	}

}
