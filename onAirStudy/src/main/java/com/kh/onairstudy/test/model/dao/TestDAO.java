package com.kh.onairstudy.test.model.dao;

import java.util.List;

import com.kh.onairstudy.test.model.vo.Test;

public interface TestDAO {

	int insertQuestion(Test test);

	List<Test> selectStudyNo();


}
