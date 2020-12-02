package com.kh.onairstudy.warning.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.onairstudy.warning.model.vo.Warning;

public interface WarningService {

	int giveWarning(HashMap<String, Object> param);

	int forceWithDraw(HashMap<String, Object> param);

	List<Warning> selectWarningCnt(int roomNum);

}
