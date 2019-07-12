package com.dao;

import java.util.List;

import com.entity.*;

public interface UserDAO {
	//ѧ���û���¼��֤
	public List searchStu(Student condition);
	//��ʦ�û���¼��֤
	public List searchTea(Teacher condition);
	//�鿴ѧ���û��Ƿ�ע��
	public boolean searchStu(String email);
	//�鿴��ʦ�û��Ƿ�ע��
	public boolean searchTea(String email);
	//���ѧ���û�
	public void addStu(Student users);
	//��ӽ�ʦ�û�
	public void addTea(Teacher users);
	//�޸�ѧ��������Ϣ
	public void modifyStu(Student users);
	//�޸Ľ�ʦ������Ϣ
	public void modifyTea(Teacher users);
	//�޸�����
	public void modifyStuPass(String password,String email);
	public void modifyTeaPass(String password,String email);
	//�鿴����ѧ���û�
	public List queryStudent(int currentPage, int pageSize);
	//�鿴���н�ʦ�û�
	public List queryTeacher(int currentPage, int pageSize);
	//ѧ���û�����
	public int getTotalStudent();
	//��ʦ�û�����
	public int getTotalTeacher();
	public List getAllTeacher();
	//ɾ��ѧ���û�
	public void deleteStudent(int sid);
	//ɾ����ʦ�û�
	public void deleteTeacher(int tid);
	//��ȡ��������
	public Teacher getTeacher(int tid);
	public Student getStudent(int sid);
}
