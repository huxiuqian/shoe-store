package com.shoes.mapper;

import java.util.List;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.SpcifyShoeOrderResult;
import com.shoes.pojo.UserOrder;

public interface OrderMapper {
	List<UserOrder> findOrderPage(Page page);
	List<SpcifyShoeOrderResult> findSpcifyOrderPage(Page page);
	SpcifyShoeOrderResult findBySprid(int sprid);
}
