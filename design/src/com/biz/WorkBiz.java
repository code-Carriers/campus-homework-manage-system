package com.biz;

import java.util.List;

import com.entity.*;

public interface WorkBiz {
	//添加作业
	public void addwork(Work work);
	//修改作业
	public void modifyWork(Work work);
	//根据教师查看作业
	public List searchWorkByTea(int tid, int currentPage, int pageSize);
	//根据教师查看作业总数
	public int getTotalWorkByTea(int tid);
	//删除作业
	public void deleteWork(int workid);
	//提交作业
	public void submitWork(Studentwork sw);
	//删除学生作业
	public void deleteStudentWork(int studentworkid);
	//修改作业成绩
	public void modifyScore(float score,int studentworkid);
	//根据班级查看作业
	public List searchWorkByClass(int classid);
	//查看班级学生作业
	public List searchStuWorkByClass(int workid);
	//根据学生查看所有作业
	public List searchWorkByStu(int sid, int currentPage, int pageSize);
	//根据学生查看作业总数
	public int getTotalWorkByStu(int sid);
	//查找学生未交作业
	public List searchWorkOfNoSubmit(int sid, int currentPage, int pageSize);
	//获取未交作业数量
	public int getTotalOfNoSubmit(int sid);
	//查找学生已交作业
	public List searchWorkOfSubmit(int sid, int currentPage, int pageSize);
	//获取已交作业数量
	public int getTotalOfSubmit(int sid);
	//查找一个学生作业
	public Studentwork searchOneStuWork(int studentworkid);
	//判断学生是否已交作业
	public List judgeOneStuWork(int sid,int workid);
	//查找一个作业
	public Work searchOneWork(int workid);
	//查看全部作业
	public List queryWork(int currentPage, int pageSize);
	//全部作业数量
	public int getTotalWork();
	//查看所有学生作业
	public List queryStudentWork(int currentPage, int pageSize);
	//全部学生作业数量
	public int getTotalStudentWork();
}
