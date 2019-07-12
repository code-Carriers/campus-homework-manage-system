package com.biz;

import java.util.List;

import com.entity.*;

public interface WorkBiz {
	//�����ҵ
	public void addwork(Work work);
	//�޸���ҵ
	public void modifyWork(Work work);
	//���ݽ�ʦ�鿴��ҵ
	public List searchWorkByTea(int tid, int currentPage, int pageSize);
	//���ݽ�ʦ�鿴��ҵ����
	public int getTotalWorkByTea(int tid);
	//ɾ����ҵ
	public void deleteWork(int workid);
	//�ύ��ҵ
	public void submitWork(Studentwork sw);
	//ɾ��ѧ����ҵ
	public void deleteStudentWork(int studentworkid);
	//�޸���ҵ�ɼ�
	public void modifyScore(float score,int studentworkid);
	//���ݰ༶�鿴��ҵ
	public List searchWorkByClass(int classid);
	//�鿴�༶ѧ����ҵ
	public List searchStuWorkByClass(int workid);
	//����ѧ���鿴������ҵ
	public List searchWorkByStu(int sid, int currentPage, int pageSize);
	//����ѧ���鿴��ҵ����
	public int getTotalWorkByStu(int sid);
	//����ѧ��δ����ҵ
	public List searchWorkOfNoSubmit(int sid, int currentPage, int pageSize);
	//��ȡδ����ҵ����
	public int getTotalOfNoSubmit(int sid);
	//����ѧ���ѽ���ҵ
	public List searchWorkOfSubmit(int sid, int currentPage, int pageSize);
	//��ȡ�ѽ���ҵ����
	public int getTotalOfSubmit(int sid);
	//����һ��ѧ����ҵ
	public Studentwork searchOneStuWork(int studentworkid);
	//�ж�ѧ���Ƿ��ѽ���ҵ
	public List judgeOneStuWork(int sid,int workid);
	//����һ����ҵ
	public Work searchOneWork(int workid);
	//�鿴ȫ����ҵ
	public List queryWork(int currentPage, int pageSize);
	//ȫ����ҵ����
	public int getTotalWork();
	//�鿴����ѧ����ҵ
	public List queryStudentWork(int currentPage, int pageSize);
	//ȫ��ѧ����ҵ����
	public int getTotalStudentWork();
}
