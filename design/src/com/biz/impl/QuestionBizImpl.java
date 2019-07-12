package com.biz.impl;

import java.util.List;

import com.biz.QuestionBiz;
import com.dao.QuestionDAO;
import com.entity.Question;

public class QuestionBizImpl implements QuestionBiz{

	QuestionDAO questionDAO;
	
	public QuestionDAO getQuestionDAO() {
		return questionDAO;
	}

	public void setQuestionDAO(QuestionDAO questionDAO) {
		this.questionDAO = questionDAO;
	}

	@Override
	public void addQuestion(Question q) {
		// TODO Auto-generated method stub
		questionDAO.addQuestion(q);
	}

	@Override
	public void answerQuestion(String answer,int qid) {
		// TODO Auto-generated method stub
		questionDAO.answerQuestion(answer,qid);
	}

	@Override
	public List searchQuestionByStu(int sid ,int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return questionDAO.searchQuestionByStu(sid,currentPage,pageSize);
	}

	@Override
	public List searchQuestionByTea(int tid,int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return questionDAO.searchQuestionByTea(tid,currentPage,pageSize);
	}

	@Override
	public int getTotalQuestionByStu(int sid) {
		// TODO Auto-generated method stub
		return questionDAO.getTotalQuestionByStu(sid);
	}

	@Override
	public int getTotalQuestionByTea(int tid) {
		// TODO Auto-generated method stub
		return questionDAO.getTotalQuestionByTea(tid);
	}
	
	@Override
	public List searchQuestionByClass(int classid) {
		// TODO Auto-generated method stub
		return questionDAO.searchQuestionByClass(classid);
	}

	@Override
	public List searchQuestionOfNotAnswer(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return questionDAO.searchQuestionOfNotAnswer(tid, currentPage, pageSize);
	}

	@Override
	public int getTotalQuestionOfNotAnswer(int tid) {
		// TODO Auto-generated method stub
		return questionDAO.getTotalQuestionOfNotAnswer(tid);
	}

	@Override
	public List queryQuestion(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return questionDAO.queryQuestion(currentPage, pageSize);
	}

	@Override
	public int getTotalQuestion() {
		// TODO Auto-generated method stub
		return questionDAO.getTotalQuestion();
	}

	@Override
	public void deleteQuestion(int qid) {
		// TODO Auto-generated method stub
		questionDAO.deleteQuestion(qid);
	}

	@Override
	public void deleteAnswer(int qid) {
		// TODO Auto-generated method stub
		questionDAO.deleteAnswer(qid);
	}

}
