package com.dao;

import java.util.List;

import com.entity.*;

public interface IShoeDAO {

	public List getTotalMenShoe();
	public List getTotalWomenShoe();
	public List getTotalkidShoe();
	public List getTotalSportShoe();
	public Shoe getOneShoe(int sid);
	public List getBrands();
	public Brand getOneBrand(int bid);
	public List getBrandShoe(int bid);
	public void deleteBrand(int bid);
	public void addBrand(Brand b);
	public void deleteShoe(int sid);
	public void addShoe(Shoe s);
}
