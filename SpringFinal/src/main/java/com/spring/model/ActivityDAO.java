package com.spring.model;

import java.util.List;

public interface ActivityDAO {

	int getListCont();
	
	List<ActivityDTO> getActivityList (PageDTO dto);
	
	int insertActivity (ActivityDTO dto);
	
	ActivityDTO activityCont(int no);
	
	void readCount(int no);
	
	int updateActivity(ActivityDTO dto);
	
	int deleteActivity(int no);
	
	void updateSequence(int no);
	
	int searchActivityCount(String field, String keyword);
	
	List<ActivityDTO> searchActivityList(PageDTO dto);
	
}
