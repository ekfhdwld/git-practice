package com.kh.onairstudy.test.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.onairstudy.studyroom.model.vo.StudyRoom;
import com.kh.onairstudy.test.model.vo.Test;


@Repository
public class TestDAOImpl implements TestDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertQuestion(Test test) {
		return sqlSession.insert("test.insertQuestion", test);
	}

	@Override
	public List<Test> selectStudyNo() {
		return sqlSession.selectList("test.selectStudyNo");
	}

	


}
