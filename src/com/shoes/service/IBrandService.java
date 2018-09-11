package com.shoes.service;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Brand;

public interface IBrandService {
	List<Brand> findBrandPage(Page page);
	void modifyBrand(Brand brand);
	Brand findByBid(int bid);
}
