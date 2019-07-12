package com.dao;

import java.util.List;

import com.entity.*;

public interface AnnounceDAO {

	//发布公告
	public void addAnnounce(Announce announce);
	//查看教师所有发布的公告
	public List searchAnnounceByTea(int tid, int currentPage, int pageSize);
	//公告数量
	public int getTotalAnnounceByTea(int tid);
	//查看学生所加入班级 的公告
	public List searchAnnounceByStu(int sid);
	//查看班级最新公告
	public Announce getOneAnnounce(int cid);
	//获取班级全部公告
	public List getClassAnnounce(int classid);
	//删除公告
	public void deleteAnnounce(int aid);
	//查看全部公告
	public List queryAnnounce(int currentPage, int pageSize);
	//公告数量
	public int getTotalAnnounce();
}
