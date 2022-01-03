<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri= "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${path}/resources/css/activity_list.css" rel="stylesheet"/> 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    
  $(button).on('load',function(){
        $('#myModal').modal('show');
    });
</script>
</head>
<body>
      

	<div id="Main" >	
		<div class="Mainmod">
			<div class="css-Mainmod">
				<div class="css-Mainmod-ExperienceList">
					<h1 class="Act-title">제주도의 액티비티</h1>
				</div>
				<div class="Act-contentsWrapper">
					<aside class="Act-filterBar">
						<div class="Act-map-container">
							<button class="Act-map-contentWrapper">  <%-- 지역으로 보기 버튼 --%>
								<div class="Act-map-content">
								 	<span class="Act-map-notSelectedLabel">
								 		<img alt="map" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_area_12_x_12_filled_blue_400.svg">
								 		지역으로 보기
								 	</span>
								</div>
							</button>
							
							 <%--전체 카테고리st --%>
							<h3 class="cat-title">카테고리</h3>
								<ul class="cat-catwapper">
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/total.png">
												<div class="cat-label">전체보기</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/diving.png">
												<div class="cat-label">스노클링/다이빙</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/surfing.png">
												<div class="cat-label">서핑</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/sea_activity.png">
												<div class="cat-label">수상액티비티</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/ship.png">
												<div class="cat-label">크루즈/요트</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/golf.png">
												<div class="cat-label">골프</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/indoor.png">
												<div class="cat-label">실내액티비티</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/sky.png">
												<div class="cat-label">익스트림액티비티</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/kart_racing.png">
												<div class="cat-label">아웃도어</div>
										</button>
									</li>
									
									<li>
										<button class="cat-all-common">
											<img class="cat-icon" alt="all icon" src="./resources/img/farm2.png">
												<div class="cat-label">이색체험</div>
										</button>
									</li>
									
								
								</ul>
								 <%--전체 카테고리end --%>
						</div>
					</aside> <%--왼쪽 카테고리end --%>
					 <%--가운데 main st --%>
						<main>
							<div class="main-mainHeader"> <%-- 액티비티분류 헤더 --%>
								<span class="main-count">
								198개의 액티비티
								</span>
								<ul class="main-sortWrapper">
									<li class="main-sortItemAct"><span>추천순</span> </li>
									<li class="main-sortItemAct"><span>판매량순</span> </li>
									<li class="main-sortItemAct"><span>낮은 가격순</span> </li>
									<li class="main-sortItemAct"><span>높은 가격순</span> </li>
									<li class="main-sortItemAct"><span>평점 높은순</span> </li>
									<li class="main-sortItemAct"><span>신상품순</span> </li>
								</ul>
							</div>
							<div class="main-offersWrapper"> <%-- 리스트 전체틀  --%>
							
							<c:set var="list" value="${List }" />
						<%-- 	<c:set var="dto" value="${Paging }" />  페이징 --%>
								      
							<c:if test="${!empty list }">
							 <c:forEach items="${list }" var="i">
							 
							 
							 <%-- 리스트 st --%>
							<div class="main-offer">  
 						    <input type="hidden" value="${dto.getA_no() }" name="a_no()">	

									<div class="main-css-kaeiru">
											<div class="main-css-imgWrapper">
											   <c:set var="dto" value="${Cont }" />
											   
											    
											 <%-- <button type="button" id="btn-myModal" class="btn btn-sm" onclick="location.href='activity_cont.do?no=${i.getA_no() }'" data-toggle="modal" data-target="#myModal" >  --%>
						 					 <button type="button" id="btn-myModal" class="btn btn-sm" data-toggle="modal" data-target="#myModal" data-seq="${i.getA_no() }" > 
						 			  				
						 						   <img class="main-css-thumbnail" alt="loading" src="<%=request.getContextPath()%>/resources/img/${i.getA_img() }" >
						 						   
						 						   </button>
						   								
													    
												    
							     						
												
											 
											</div>
										</div>
										<div class="main-css-15v0401">
										<div>
											<div class="main-css-1v0401">액티비티 제주도</div> 
											<div class="main-css-2v0401">${i.getA_name() }</div>
											<div class="main-css-3v0401">${i.getA_seller()}</div>
										</div>
										<div>
											<div class="main-css-4v0401">
												<div class="main-css-5v0401">
													<div class="main-css-6v0401">
														<img alt="icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg">
													</div>
												</div>
												856
											</div> <%-- 별점 end --%>
											<div class="main-css-10v0401">
												<div class="main-css-11v0401">
													<span class="main-css-11x902oe">
														<fmt:formatNumber value="${i.getA_price() }" pattern="#,###"/>원	
													</span>
												</div>
												<span class="main-css-11wj8nz">
													<!-- <input class="main-btn-11wj8nz" type="image" src="./resources/img/add.png"> -->
													<input class="main-btn-11wj8nz" type="button" value="담기">
												</span>
											</div>
										</div>
									</div>
								</div>
								<%-- 리스트 end --%>
								
								
						
								</c:forEach>
								</c:if>
								 <!-- Modal -->
							     <div class="modal" id="myModal" role="dialog" data-seq = "${i.getA_no() }">
							       <div class="modal-dialog">
							 		 <c:if test="${i eq no }">
							 		 <c:forEach var ="i" items = "${list}">
							 		 
							 		  <input type="hidden" value="${dto.getA_no() }" name="a_no()">	
							         <!-- Modal content-->
							         <div class="modal-content">
							           <div class="modal-header">
							             <button type="button" class="close" data-dismiss="modal"></button>
							             <h4 class="modal-title">${i.getA_name() }</h4>
							           </div>
							           <div class="modal-body">
							             <p><img class="main-css-thumbnail" alt="loading" loading="lazy" src="<%=request.getContextPath()%>/resources/img/${i.getA_img() }" > </p>
							           </div>
							           <div class="modal-footer">
							             <img class="main-css-thumbnail" alt="loading" loading="lazy" src="<%=request.getContextPath()%>/resources/img/${i.getA_img_cont() }" >
							           </div>
							         </div>
							         
									</c:forEach>
									</c:if>
							       </div>
							     </div>
							     <!-- Modal end-->
							     
							     
								
								 <c:if test="${empty list }">
							         <tr>
							            <td colspan="5" align="center">
							               <h3>검색된 제품 목록이 없습니다.....</h3>
							            </td>
							         </tr>
							      </c:if>	
								
								
							</div>
						</main>
					
					<%--가운데 main end --%>
				</div>
			</div>		
		</div>
	
	</div>


</body>
</html>