package com.kh.onairstudy.test.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onairstudy.studyroom.model.vo.StudyRoom;
import com.kh.onairstudy.test.model.dao.TestDAO;
import com.kh.onairstudy.test.model.vo.Test;


/*@Transactional(propagation = Propagation.REQUIRED,
isolation = Isolation.READ_COMMITTED,
rollbackFor = Exception.class)*/
@Service
public class TestServiceImpl implements TestService {

	@Autowired 
	private TestDAO testDAO;

	@Override
	public int insertQuestion(Test test) {
		return testDAO.insertQuestion(test);
	}

	@Override
	public List<Test> selectStudyNo() {
		
		return testDAO.selectStudyNo();
	}



	
}
