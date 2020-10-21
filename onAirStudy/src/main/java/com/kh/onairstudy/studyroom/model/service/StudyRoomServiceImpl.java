package com.kh.onairstudy.studyroom.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onairstudy.studyroom.model.dao.StudyRoomDAO;
import com.kh.onairstudy.studyroom.model.vo.ProfileAttachment;
import com.kh.onairstudy.studyroom.model.vo.StudyCategory;
import com.kh.onairstudy.studyroom.model.vo.StudyRoom;
import com.kh.onairstudy.studyroom.model.vo.StudyRoomList;
import com.kh.onairstudy.studyroom.model.vo.StudyRoomWaiting;
import com.kh.onairstudy.studyroom.model.vo.StudyRoomWish;

/*@Transactional(propagation = Propagation.REQUIRED,
isolation = Isolation.READ_COMMITTED,
rollbackFor = Exception.class)*/
@Service
public class StudyRoomServiceImpl implements StudyRoomService{

	@Autowired
	private StudyRoomDAO studyRoomDAO;
	
	@Override
	public List<StudyRoom> selectMystudyList() {		
		return studyRoomDAO.selectMystudyList();
	}

	@Override
	public List<StudyRoomWaiting> selectMywaitingList() {		
		return studyRoomDAO.selectMywaitingList();
	}

	@Override
	public List<StudyRoomWish> selectMywishList() {
		return studyRoomDAO.selectMywishList();
	}

	@Override
	public List<StudyRoomList> selectStudyRoomList() {
		return studyRoomDAO.selectStudyRoomList();
	}

	@Override
	public List<StudyCategory> selectCategoryList() {
		return studyRoomDAO.selectCategoryList();
	}

	@Override
	public int insertStudyRoom(StudyRoom studyroom) {
		
		int result = 0;
		StudyRoomList roomlist = new StudyRoomList();
				
		result = studyRoomDAO.insertStudyRoom(studyroom);
		result = studyRoomDAO.insertStudyRoomList(roomlist);
		
		if(studyroom.getProList() != null) {
			for(ProfileAttachment profile : studyroom.getProList()) {
				
				profile.setNo(studyroom.getSrNo());
				result = studyRoomDAO.insertProfileAttachment(profile);
			}
		}
		
		return result;
	}
}
