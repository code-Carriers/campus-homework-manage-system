package com.action;

import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.biz.*;
import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;

public class ShoppingAction  extends ActionSupport{
	protected BookBiz bookBiz;
	private OrderBiz orderBiz;
	private Integer bookid;
	private Integer quantity;
	private String message;
	private Integer check[];
	public BookBiz getBookBiz() {
		return bookBiz;
	}

	public void setBookBiz(BookBiz bookBiz) {
		this.bookBiz = bookBiz;
	}

	public OrderBiz getOrderBiz() {
		return orderBiz;
	}

	public void setOrderBiz(OrderBiz orderBiz) {
		this.orderBiz = orderBiz;
	}

	public Integer getBookid() {
		return bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	public Integer[] getCheck() {
		return check;
	}

	public void setCheck(Integer[] check) {
		this.check = check;
	}

	public String addToCart() throws Exception{		
		Map session=ActionContext.getContext().getSession();			
		Book book=bookBiz.getBookDetail(bookid);		
		Orderitem orderitem=new Orderitem();
		orderitem.setBook(book);
		orderitem.setQuantity(quantity);
		Cart cart=(Cart) session.get("cart");
		if(cart==null)
			cart=new Cart();
		cart.addBook(bookid, orderitem);
		session.put("cart", cart);
		return SUCCESS;
	}
	public String removeItem() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Cart cart=(Cart)session.get("cart");
		cart.getItems().remove(bookid);
		session.put("cart", cart);
		System.out.println("\n删除 "+bookid);
		message="移除成功";
		return SUCCESS;
	}
	public String updateCart() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");	
		System.out.println("\n更改"+quantity);
		Cart cart=(Cart) session.get("cart");
		cart.updateCart(bookid, quantity);
		session.put("cart",cart);
		/*JSONObject jsons=new JSONObject();
		jsons.put("total", total);
		result=JSONObject.fromObject(jsons).toString();*/
		return SUCCESS;
	}
	public String checkCart() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User) session.get("user");
		if(user==null){		
			return "error";
		}
		System.out.println("\n checkbox"+check);
		if(check.length>0){
		Orders order=new Orders();
		order.setOrderdate(new Date());
		order.setUser(user);
		Cart cart=(Cart) session.get("cart");
		Integer total=0;
		for(int i=0;i<check.length;i++){	
			Orderitem o=cart.getItems().get(check[i]);
			cart.getItems().remove(check[i]);
			o.setOrders(order);
			order.getOrderitems().add(o);
			total=total+o.getAmount();
		}
		orderBiz.saveOrder(order);
		session.put("order", order);
		session.put("cart", cart);
		session.put("total", total);
		}
		return "success";
	}
	
	public String pay() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User) session.get("user");
		List checkItems=(List)session.get("checkItems");
		for(int i=0;i<checkItems.size();i++){
			Orderitem item=(Orderitem) checkItems.get(i);
			orderBiz.pay(user.getUserid(),item.getBook().getBookid());
		}
		return "success";
	}
	public String searchOrder() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User) session.get("user");
		if(user==null){		
			return "error";
		}
		List orders=orderBiz.searchOrder(user.getUserid());
		//System.out.println("\n select order"+orders.get(0).toString());		
		session.put("orders", orders);
		return "success";
	}
}
