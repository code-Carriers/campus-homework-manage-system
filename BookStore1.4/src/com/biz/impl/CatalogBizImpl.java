package com.biz.impl;

import java.util.List;

import com.biz.CatalogBiz;
import com.dao.CatalogDAO;

public class CatalogBizImpl implements CatalogBiz {

	private CatalogDAO catalogDAO;
	
	public CatalogDAO getCatalogDAO() {
		return catalogDAO;
	}

	public void setCatalogDAO(CatalogDAO catalogDAO) {
		this.catalogDAO = catalogDAO;
	}

	public List getCatalogs() {
		// TODO Auto-generated method stub
		return catalogDAO.getAllCatalogs();
	}

}
