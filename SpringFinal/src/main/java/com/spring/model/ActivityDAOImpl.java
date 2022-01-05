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
		return this.sqlSession.selectOne("count");
	}

	@Override
	public List<ActivityDTO> getActivityList(PageDTO dto) {
		
		return this.sqlSession.selectList("all",dto);
		
		
	}

	@Override
	public int insertActivity(ActivityDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ActivityDTO activityCont(int no) {
		
		return this.sqlSession.selectOne("content", no);
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
//
//	@Override
//	public List<ActivityDTO> searchActivityList(PageDTO dto) {
//		if(dto.getField().equals("snow")) {
//			return this.sqlSession.selectList("snowList", dto);
//		}else if(dto.getField().equals("cont")) {
//			return this.sqlSession.selectList("contList", dto);
//		}else if(dto.getField().equals("title_cont")) {
//			return this.sqlSession.selectList("titleCont", dto);
//		}else {
//			return this.sqlSession.selectList("writerList", dto);
//		}
//	}

	@Override
	public int getCategoryCont(String result) {
		return this.sqlSession.selectOne("category", result);
	}

	@Override
	public List<ActivityDTO> searchActivityList(PageDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ActivityDTO> getCategorylist(PageDTO dto) {
		if(dto.getCategory().equals("아웃도어")) {
			return this.sqlSession.selectList("outdoor", dto);
		}else if(dto.getCategory().equals("스노우클링/다이빙")) {
			return this.sqlSession.selectList("snow", dto);
		}else if(dto.getCategory().equals("title_cont")) {
			return this.sqlSession.selectList("titleCont", dto);
	    }else {
			return this.sqlSession.selectList("writerList", dto);
		}
	}
	

	
	

	}

