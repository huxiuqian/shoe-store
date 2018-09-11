package com.shoes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes.mapper.OrderMapper;
import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.SpcifyShoeOrderResult;
import com.shoes.pojo.UserOrder;
import com.shoes.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService {
	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public List<UserOrder> findOrderPage(Page page) {
		return orderMapper.findOrderPage(page);
	}

	@Override
	public List<SpcifyShoeOrderResult> findSpcifyOrderPage(Page page) {
		return orderMapper.findSpcifyOrderPage(page);
	}

	@Override
	public SpcifyShoeOrderResult findBySprid(int sprid) {
		return orderMapper.findBySprid(sprid);
	}

}
