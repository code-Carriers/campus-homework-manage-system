package com.biz;

import java.util.List;

import com.entity.Question;

public interface QuestionBiz {
	//ѧ������ɻ�
	public void addQuestion(Question q);
	//��ʦ����ɻ�
	public void answerQuestion(String answer,int qid);
	//ѧ���鿴�ɻ��¼
	public List searchQuestionByStu(int sid, int currentPage, int pageSize);
	//ѧ���ɻ��¼����
	public int getTotalQuestionByStu(int sid);
	//��ʦ�鿴�ɻ��¼
	public List searchQuestionByTea(int tid, int currentPage, int pageSize);
	//��ʦ�ɻ��¼����
	public int getTotalQuestionByTea(int tid);
	//��ʦ�鿴δ����ɻ��¼
	public List searchQuestionOfNotAnswer(int tid, int currentPage, int pageSize);
	//��ʦδ����ɻ��¼����
	public int getTotalQuestionOfNotAnswer(int tid);
	//�鿴�༶�ɻ�
	public List searchQuestionByClass(int classid);
	//�鿴ȫ���ɻ�
	public List queryQuestion(int currentPage, int pageSize);
	//�ɻ�����
	public int getTotalQuestion();
	//ɾ���ɻ�
	public void deleteQuestion(int qid);
	public void deleteAnswer(int qid);
}
