package com.dao;

import java.util.List;

import com.entity.*;

public interface UserDAO {
	//学生用户登录验证
	public List searchStu(Student condition);
	//教师用户登录验证
	public List searchTea(Teacher condition);
	//查看学生用户是否被注册
	public boolean searchStu(String email);
	//查看教师用户是否被注册
	public boolean searchTea(String email);
	//添加学生用户
	public void addStu(Student users);
	//添加教师用户
	public void addTea(Teacher users);
	//修改学生个人信息
	public void modifyStu(Student users);
	//修改教师个人信息
	public void modifyTea(Teacher users);
	//修改密码
	public void modifyStuPass(String password,String email);
	public void modifyTeaPass(String password,String email);
	//查看所有学生用户
	public List queryStudent(int currentPage, int pageSize);
	//查看所有教师用户
	public List queryTeacher(int currentPage, int pageSize);
	//学生用户数量
	public int getTotalStudent();
	//教师用户数量
	public int getTotalTeacher();
	public List getAllTeacher();
	//删除学生用户
	public void deleteStudent(int sid);
	//删除教师用户
	public void deleteTeacher(int tid);
	//获取单个对象
	public Teacher getTeacher(int tid);
	public Student getStudent(int sid);
}
