package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.ShoesMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.ShoeTypeBrand;
import com.shoes.pojo.Shoes;
import com.shoes.pojo.TypeSpBrand;
import com.shoes.service.IShoesService;

@Service("IShoesService")
public class ShoesServiceImpl implements IShoesService {
	@Autowired
	private ShoesMapper shoesMapper;

	@Override
	public List<ShoeTypeBrand> findAll() {
		return shoesMapper.findAll();
	}

	@Override
	public List<ShoeTypeBrand> selectPage(Page page) {
		return shoesMapper.selectPage(page);
	}


	@Override
	public List<TypeSpBrand> findPage(Page page) {
		return shoesMapper.findPage(page);
	}

	@Override
	public void addShoes(Shoes shoe) {
		shoesMapper.addShoes(shoe);
	}

	/*@Override
	public void deleteSpShoe(int spsid) {
		shoesMapper.deleteSpShoe(spsid);		
	}*/
}
