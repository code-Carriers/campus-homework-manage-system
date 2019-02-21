package com.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ShoeBiz;

public class ShoeAction extends ActionSupport {

	private ShoeBiz shoeBiz;
	private Brand brands;
	private Shoe shoe;
	private int sid;
	private int bid;
	
	private File picture;//文件
	private String pictureFileName;//文件名称 
	private String pictureContentType; //文件类型 
	//String savepath= ServletActionContext.getServletContext().getRealPath("/image");
	String savepath="D:/Users/Administrator/Workspaces/MyEclipse 2017 CI/ShoeStore/WebRoot/images";
//注入
	public ShoeBiz getShoeBiz() {
		return shoeBiz;
	}

	public void setShoeBiz(ShoeBiz shoeBiz) {
		this.shoeBiz = shoeBiz;
	} 
	
	public Brand getBrands() {
		return brands;
	}

	public void setBrands(Brand brands) {
		this.brands = brands;
	}

	public Shoe getShoe() {
		return shoe;
	}

	public void setShoe(Shoe shoe) {
		this.shoe = shoe;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	
	public File getPicture() {
		return picture;
	}

	public void setPicture(File picture) {
		this.picture = picture;
	}

	public String getPictureFileName() {
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

	public String getPictureContentType() {
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

	public String query_menshoe() throws Exception {
		List menshoe=shoeBiz.getTotalMenShoe();
		Map session=ActionContext.getContext().getSession();
		session.put("menshoe",menshoe);	
		return "success";  
	}
	public String query_womenshoe() throws Exception {
		List womenshoe=shoeBiz.getTotalWomenShoe();
		Map session=ActionContext.getContext().getSession();
		session.put("womenshoe",womenshoe);	
		return "success";  
	}
	public String query_kidshoe() throws Exception {
		List kidshoe=shoeBiz.getTotalSportShoe();
		Map session=ActionContext.getContext().getSession();
		session.put("kidshoe",kidshoe);	
		return "success";  
	}
	public String query_sportshoe() throws Exception {
		List sportshoe=shoeBiz.getTotalSportShoe();
		Map session=ActionContext.getContext().getSession();
		session.put("sportshoe",sportshoe);	
		return "success";  
	}
	public String query_oneshoe() throws Exception {
		Shoe oneshoe=shoeBiz.getOneShoe(sid);
		Map session=ActionContext.getContext().getSession();
		session.put("oneshoe",oneshoe);	
		return "success";  
	}
	public String query_brands() throws Exception {
		List brands=shoeBiz.getBrands();
		Map session=ActionContext.getContext().getSession();
		session.put("brands",brands);
		
		return "success";  
	}
	public String query_brandshoe() throws Exception {
		List brandshoe=shoeBiz.getBrandShoe(bid);
		Map session=ActionContext.getContext().getSession();
		session.put("brandshoe",brandshoe);	
		return "success";  
	}
	public String delete_brands() throws Exception {
		shoeBiz.deleteBrand(bid);
		return "success";  
	}
	public String add_brands() throws Exception {
		if(picture!=null){
			File dir=new File(savepath); 
			//判断文件是否上传，如果上传的话将会创建该目录 
			if(!dir.exists()){ 
				dir.mkdir(); //创建该目录 
			} 
			try {
				File file=new File(dir, pictureFileName);			
				if(!file.exists()){
					file.createNewFile();
				}
			    FileUtils.copyFile(picture,file); 
			}catch (IOException e) {
			   e.printStackTrace();
			}
			brands.setLogo(pictureFileName);
		}
		shoeBiz.addBrand(brands);
		return "success";  
	}
	public String delete_shoe() throws Exception {
		shoeBiz.deleteShoe(sid);
		return "success";  
	}
	public String add_shoe() throws Exception {
		if(picture!=null){
			File dir=new File(savepath); 
			//判断文件是否上传，如果上传的话将会创建该目录 
			if(!dir.exists()){ 
				dir.mkdir(); //创建该目录 
			} 
			try {
				File file=new File(dir, pictureFileName);			
				if(!file.exists()){
					file.createNewFile();
				}
			    FileUtils.copyFile(picture,file); 
			}catch (IOException e) {
			   e.printStackTrace();
			}
			shoe.setPicture(pictureFileName);
		}
		Brand brand=shoeBiz.getOneBrand(bid);
		shoe.setBrand(brand);
		shoeBiz.addShoe(shoe);
		return "success";  
	}
	
}
