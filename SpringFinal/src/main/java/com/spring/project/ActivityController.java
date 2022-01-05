package com.spring.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.ActivityDAO;
import com.spring.model.ActivityDTO;


@Controller
public class ActivityController {

	@Autowired
	private ActivityDAO dao;
	
	
	private final int rowsize = 12;			// 한 페이지에 보여질 게시물의 수
	private int totalRecord = 0;            // DB 상의 게시물 전체 수
	
/*	
	@RequestMapping("activity_list.do")
	public String list(HttpServletRequest request, Model model) {
		
		int page;  // 현재 페이지 변수 
		
		if(request.getParameter("page") !=null) {
			page = Integer.parseInt(request.getParameter("page")); 
		}else {
			page = 1;   // 처음으로 게시물 목록 태그를 클릭한 경우
		}
		
		// DB 상의 전체 게시물의 수를 확인하는 작업
		totalRecord = this.dao.getListCont();
		
		PageDTO dto = new PageDTO(page, rowsize, totalRecord);
		
		// 페이지에 해당하는 게시물을 가져오는 메서드 호출
		List<ActivityDTO> pageList = this.dao.getActivityList(dto);
		
		model.addAttribute("List", pageList);
		model.addAttribute("Paging", dto);
		
		return "activity_list";
		
		
	}
	*/
	
	@RequestMapping("activity_list.do")
	public String list(Model model) {
		
		List<ActivityDTO> list = this.dao.getActivityList();
		
		model.addAttribute("List", list);
		
		return "activity_list";
		
		
	}
	
//	@RequestMapping("activity_cont.do")
//	public String content(@RequestParam("no") int no, Model model) {
//		
//		ActivityDTO dto = this.dao.activityCont(no);
//		
//		model.addAttribute("Cont", dto);
//		
//		// System.out.println("image >>> " + dto.getA_img());
//		
//		return "activity_list";
//	}
	
//	@RequestMapping("act_new.do")
//	public String ActListNewSort(Model model) {
//
//	}




}
	
