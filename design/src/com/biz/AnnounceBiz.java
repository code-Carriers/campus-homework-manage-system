package com.biz;

import java.util.List;

import com.entity.*;

public interface AnnounceBiz {
	//��������
	public void addAnnounce(Announce announce);
	//�鿴���й���
	public List searchAnnounceByTea(int tid, int currentPage, int pageSize);
	//��������
	public int getTotalAnnounceByTea(int tid);
	//�鿴ѧ��������༶ �Ĺ���
	public List searchAnnounceByStu(int sid);
	//ɾ������
	public void deleteAnnounce(int aid);
	//�鿴�༶���¹���
	public Announce getOneAnnounce(int cid);
	//��ȡ�༶ȫ������
	public List getClassAnnounce(int classid);
	//�鿴ȫ������
	public List queryAnnounce(int currentPage, int pageSize);
	//��������
	public int getTotalAnnounce();
}
