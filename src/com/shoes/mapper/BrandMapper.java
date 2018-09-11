package com.shoes.mapper;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.Brand;

public interface BrandMapper {
	List<Brand> findBrandPage(Page page);
	void modifyBrand(Brand brand);
	Brand findByBid(int bid);
}
