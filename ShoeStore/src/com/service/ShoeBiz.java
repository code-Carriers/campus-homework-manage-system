package com.service;

import java.util.List;

import com.entity.Brand;
import com.entity.Shoe;

public interface ShoeBiz {

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
