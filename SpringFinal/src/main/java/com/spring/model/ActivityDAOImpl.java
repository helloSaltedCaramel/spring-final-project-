package com.spring.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ActivityDAOImpl implements ActivityDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getListCont() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ActivityDTO> getActivityList() {
		return this.sqlSession.selectList("all");
	}

	@Override
	public int insertActivity(ActivityDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ActivityDTO activityCont(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void readCount(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int updateActivity(ActivityDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteActivity(int no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateSequence(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int searchActivityCount(String field, String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ActivityDTO> searchActivityList(PageDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
