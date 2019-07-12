package com.biz.impl;

import java.util.List;

import com.biz.AnnounceBiz;
import com.dao.AnnounceDAO;
import com.entity.Announce;

public class AnnounceBizImpl implements AnnounceBiz {

	AnnounceDAO announceDAO;
	
	public AnnounceDAO getAnnounceDAO() {
		return announceDAO;
	}

	public void setAnnounceDAO(AnnounceDAO announceDAO) {
		this.announceDAO = announceDAO;
	}

	@Override
	public void addAnnounce(Announce announce) {
		// TODO Auto-generated method stub
		announceDAO.addAnnounce(announce);
	}

	@Override
	public List searchAnnounceByTea(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return announceDAO.searchAnnounceByTea(tid, currentPage, pageSize);
	}

	@Override
	public int getTotalAnnounceByTea(int tid) {
		// TODO Auto-generated method stub
		return announceDAO.getTotalAnnounceByTea(tid);
	}

	@Override
	public void deleteAnnounce(int aid) {
		// TODO Auto-generated method stub
		announceDAO.deleteAnnounce(aid);
	}

	@Override
	public Announce getOneAnnounce(int cid) {
		// TODO Auto-generated method stub
		return announceDAO.getOneAnnounce(cid);
	}

	@Override
	public List searchAnnounceByStu(int sid) {
		// TODO Auto-generated method stub
		return announceDAO.searchAnnounceByStu(sid);
	}

	@Override
	public List getClassAnnounce(int classid) {
		// TODO Auto-generated method stub
		return announceDAO.getClassAnnounce(classid);
	}

	@Override
	public List queryAnnounce(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return announceDAO.queryAnnounce(currentPage, pageSize);
	}

	@Override
	public int getTotalAnnounce() {
		// TODO Auto-generated method stub
		return announceDAO.getTotalAnnounce();
	}

}
