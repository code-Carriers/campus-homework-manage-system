package com.service.impl;

import java.util.List;

import com.dao.IShoeDAO;
import com.entity.Brand;
import com.entity.Shoe;
import com.service.ShoeBiz;

public class ShoeBizImpl implements ShoeBiz {

	IShoeDAO shoeDAO;
	
	public IShoeDAO getShoeDAO() {
		return shoeDAO;
	}

	public void setShoeDAO(IShoeDAO shoeDAO) {
		this.shoeDAO = shoeDAO;
	}

	@Override
	public List getTotalMenShoe() {
		// TODO Auto-generated method stub
		return shoeDAO.getTotalMenShoe();
	}

	@Override
	public List getTotalWomenShoe() {
		// TODO Auto-generated method stub
		return shoeDAO.getTotalWomenShoe();
	}

	@Override
	public List getTotalSportShoe() {
		// TODO Auto-generated method stub
		return shoeDAO.getTotalSportShoe();
	}

	@Override
	public Shoe getOneShoe(int sid) {
		// TODO Auto-generated method stub
		return shoeDAO.getOneShoe(sid);
	}

	@Override
	public List getTotalkidShoe() {
		// TODO Auto-generated method stub
		return shoeDAO.getTotalkidShoe();
	}

	@Override
	public List getBrands() {
		// TODO Auto-generated method stub
		return shoeDAO.getBrands();
	}

	@Override
	public List getBrandShoe(int bid) {
		// TODO Auto-generated method stub
		return shoeDAO.getBrandShoe(bid);
	}

	@Override
	public void deleteBrand(int bid) {
		// TODO Auto-generated method stub
		shoeDAO.deleteBrand(bid);
	}

	@Override
	public void addBrand(Brand b) {
		// TODO Auto-generated method stub
		shoeDAO.addBrand(b);
	}

	@Override
	public void deleteShoe(int sid) {
		// TODO Auto-generated method stub
		shoeDAO.deleteShoe(sid);
	}

	@Override
	public void addShoe(Shoe s) {
		// TODO Auto-generated method stub
		shoeDAO.addShoe(s);
	}

	@Override
	public Brand getOneBrand(int bid) {
		// TODO Auto-generated method stub
		return shoeDAO.getOneBrand(bid);
	}

}
