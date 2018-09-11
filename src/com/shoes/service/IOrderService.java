package com.shoes.service;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.SpcifyShoeOrderResult;
import com.shoes.pojo.UserOrder;

public interface IOrderService {
	List<UserOrder> findOrderPage(Page page);
	List<SpcifyShoeOrderResult> findSpcifyOrderPage(Page page);
	SpcifyShoeOrderResult findBySprid(int sprid);
}
