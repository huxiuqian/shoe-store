package com.shoes.service;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.ShoeTypeBrand;
import com.shoes.pojo.Shoes;
import com.shoes.pojo.TypeSpBrand;

public interface IShoesService {
	List<ShoeTypeBrand> findAll();
	List<ShoeTypeBrand> selectPage(Page page);
	List<TypeSpBrand> findPage(Page page);
//	void deleteSpShoe(int spsid);
	void addShoes(Shoes shoe);
}
