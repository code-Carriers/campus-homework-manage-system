package com.biz.impl;

import java.util.List;

import com.biz.WorkBiz;
import com.dao.WorkDAO;
import com.entity.*;

public class WorkBizImpl implements WorkBiz {

	WorkDAO workDAO;
	
	public WorkDAO getWorkDAO() {
		return workDAO;
	}

	public void setWorkDAO(WorkDAO workDAO) {
		this.workDAO = workDAO;
	}

	@Override
	public void addwork(Work work) {
		// TODO Auto-generated method stub
		workDAO.addwork(work);
	}

	@Override
	public List searchWorkByTea(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return workDAO.searchWorkByTea(tid,  currentPage,pageSize);
	}

	@Override
	public List searchWorkByClass(int classid) {
		// TODO Auto-generated method stub
		return workDAO.searchWorkByClass(classid);
	}

	@Override
	public List searchWorkByStu(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return workDAO.searchWorkByStu(sid,  currentPage,pageSize);
	}

	@Override
	public Work searchOneWork(int workid) {
		// TODO Auto-generated method stub
		return workDAO.searchOneWork(workid);
	}

	@Override
	public int getTotalWorkByTea(int tid) {
		// TODO Auto-generated method stub
		return workDAO.getTotalWorkByTea(tid);
	}

	@Override
	public int getTotalWorkByStu(int sid) {
		// TODO Auto-generated method stub
		return workDAO.getTotalWorkByStu(sid);
	}

	@Override
	public void deleteWork(int workid) {
		// TODO Auto-generated method stub
		workDAO.deleteWork(workid);
	}

	@Override
	public List searchWorkOfNoSubmit(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return workDAO.searchWorkOfNoSubmit(sid, currentPage, pageSize);
	}

	@Override
	public int getTotalOfNoSubmit(int sid) {
		// TODO Auto-generated method stub
		return workDAO.getTotalOfNoSubmit(sid);
	}

	@Override
	public List searchWorkOfSubmit(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return workDAO.searchWorkOfSubmit(sid, currentPage, pageSize);
	}

	@Override
	public int getTotalOfSubmit(int sid) {
		// TODO Auto-generated method stub
		return workDAO.getTotalOfSubmit(sid);
	}

	@Override
	public List judgeOneStuWork(int sid, int workid) {
		// TODO Auto-generated method stub
		return workDAO.judgeOneStuWork(sid, workid);
	}

	@Override
	public void submitWork(Studentwork sw) {
		// TODO Auto-generated method stub
		workDAO.submitWork(sw);
	}

	@Override
	public List searchStuWorkByClass(int workid) {
		// TODO Auto-generated method stub
		return workDAO.searchStuWorkByClass(workid);
	}

	@Override
	public void modifyWork(Work work) {
		// TODO Auto-generated method stub
		workDAO.modifyWork(work);
	}

	@Override
	public void modifyScore(float score, int studentworkid) {
		// TODO Auto-generated method stub
		workDAO.modifyScore(score, studentworkid);
	}

	@Override
	public Studentwork searchOneStuWork(int studentworkid) {
		// TODO Auto-generated method stub
		return workDAO.searchOneStuWork(studentworkid);
	}

	@Override
	public List queryWork(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return workDAO.queryWork(currentPage, pageSize);
	}

	@Override
	public int getTotalWork() {
		// TODO Auto-generated method stub
		return workDAO.getTotalWork();
	}

	@Override
	public List queryStudentWork(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return workDAO.queryStudentWork(currentPage, pageSize);
	}

	@Override
	public int getTotalStudentWork() {
		// TODO Auto-generated method stub
		return workDAO.getTotalStudentWork();
	}

	@Override
	public void deleteStudentWork(int studentworkid) {
		// TODO Auto-generated method stub
		workDAO.deleteStudentWork(studentworkid);
	}
	
}
