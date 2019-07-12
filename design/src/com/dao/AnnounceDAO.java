package com.dao;

import java.util.List;

import com.entity.*;

public interface AnnounceDAO {

	//��������
	public void addAnnounce(Announce announce);
	//�鿴��ʦ���з����Ĺ���
	public List searchAnnounceByTea(int tid, int currentPage, int pageSize);
	//��������
	public int getTotalAnnounceByTea(int tid);
	//�鿴ѧ��������༶ �Ĺ���
	public List searchAnnounceByStu(int sid);
	//�鿴�༶���¹���
	public Announce getOneAnnounce(int cid);
	//��ȡ�༶ȫ������
	public List getClassAnnounce(int classid);
	//ɾ������
	public void deleteAnnounce(int aid);
	//�鿴ȫ������
	public List queryAnnounce(int currentPage, int pageSize);
	//��������
	public int getTotalAnnounce();
}
