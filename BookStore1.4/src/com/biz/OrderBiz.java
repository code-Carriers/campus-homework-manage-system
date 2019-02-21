package com.biz;

import java.util.List;

import com.entity.*;

public interface OrderBiz {
	public void saveOrder(Orders order);
	public List searchOrder(Integer userid);
	public void pay(Integer userid,Integer bookid);
}
