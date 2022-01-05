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

<%-- import activity_list.css --%>
<link href="${path}/resources/css/activity_list.css" rel="stylesheet"/> 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    
  
  var a_id ="";
  
  $(button).on('load',function(){
        $('#myModal').modal('show');
        $(‘#a_bo’).val(A_no);
    });
  
	
 
  
  
  $(button).on('load',function(){
      $('#Map').modal('show');
  });
  
  function sort(how) {
	  $('main-mainHeader form').attr('action','act_new.do?sort='+how);
	  $('.sort').submit();
  }
  
  function transferRId(rid){

	  $('#A_no').val(rid)

	  } 
  
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
							<%-- 지역으로 보기 버튼 --%>
							<button class="Act-map-contentWrapper" type="button" id="btn-myModal" class="main-css-imgWrapper" data-toggle="modal"
								data-target="#Map" data-seq="${i.getA_no() }">
							<div class="Act-map-content">
								<span class="Act-map-notSelectedLabel"><img alt="map" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_area_12_x_12_filled_blue_400.svg"> 지역으로 보기</span>
								</div>

						</button>

						<!--Modal -->
							 <div class="modal" id="Map" role="dialog">
							
							
														
						         <!-- Modal content-->
						         <div class="map-content">
						           <div class="map-header" >
						           
						             <img class="ma-css-thumbnail" alt="loading"
														src="<%=request.getContextPath()%>/resources/img/map_cloudfront.png">
						           	
						           
						           </div>
						           
						         </div>
							</div> 
						

							<%--전체 카테고리st --%>
							<h3 class="cat-title">카테고리</h3>
							<ul class="cat-catwapper">
								<li>
									<button class="cat-all-common" onclick="location.href='activity_list.do'">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/total.png">
										<div class="cat-label">전체보기</div>
									</button>
								</li>

								<li>
								    <c:set var="str" value="스노우클링/다이빙" />
									<button class="cat-all-common" onclick="location.href='activity_category.do?result=${str }'">
									
										<img class="cat-icon" alt="all icon"
											src="./resources/img/diving.png">
										<div class="cat-label">스노우클링/다이빙</div>
									</button>
								</li>

								<li>
									<button class="cat-all-common">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/surfing.png">
										<div class="cat-label">서핑</div>
									</button>
								</li>

								<li>
									<button class="cat-all-common">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/sea_activity.png">
										<div class="cat-label">수상액티비티</div>
									</button>
								</li>

								<li>
									<button class="cat-all-common">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/ship.png">
										<div class="cat-label">크루즈/요트</div>
									</button>
								</li>

								<li>
									<button class="cat-all-common">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/golf.png">
										<div class="cat-label">골프</div>
									</button>
								</li>

								<li>
									<button class="cat-all-common">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/indoor.png">
										<div class="cat-label">실내액티비티</div>
									</button>
								</li>

								<li>
									<button class="cat-all-common">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/sky.png">
										<div class="cat-label">익스트림액티비티</div>
									</button>
								</li>

								<li>
								<c:set var="str" value="아웃도어" />
									<button class="cat-all-common" onclick="location.href='activity_category.do?result=${str }'">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/kart_racing.png">
										<div class="cat-label">아웃도어</div>
									</button>
								</li>

								<li>
									<button class="cat-all-common">
										<img class="cat-icon" alt="all icon"
											src="./resources/img/farm2.png">
										<div class="cat-label">이색체험</div>
									</button>
								</li>


							</ul>
							<%--전체 카테고리end --%>
						</div>
					</aside>
					<%--왼쪽 카테고리end --%>
					<%--가운데 main st --%>
					<main>
						<div class="main-mainHeader">
							<%-- 액티비티분류 헤더 --%>
							<span class="main-count"> 198개의 액티비티 </span>
							<ul class="main-sortWrapper">
								<li class="main-sortItemAct"><span>추천순</span></li>
								<li class="main-sortItemAct"><span>판매량순</span></li>
								<li class="main-sortItemAct"><span>낮은 가격순</span></li>
								<li class="main-sortItemAct"><span>높은 가격순</span></li>
								<li class="main-sortItemAct"><span>평점 높은순</span></li>
								<li class="main-sortItemAct" onclick="sort('new');"><span>신상품순</span>
								</li>
							</ul>
						</div>
						<div class="main-offersWrapper">
							<%-- 리스트 전체틀  --%>

							<c:set var="list" value="${List }" />
							<c:set var="dto" value="${Paging }" />  <%-- 페이징 --%>

							<c:if test="${!empty list }">
								<c:forEach items="${list }" var="i">


									<%-- 리스트 st --%>
									<div class="main-offer">
										<%--  <input type="hidden" value="${dto.getA_no() }" name="a_no()"> --%>

										<div class="main-css-kaeiru">
											<div class="main-css-imgWrapper">
												<%--  <c:set var="dto" value="${Cont }" /> --%>


												<%-- <button type="button" id="btn-myModal" class="btn btn-sm" onclick="location.href='activity_cont.do?no=${i.getA_no() }'" data-toggle="modal" data-target="#myModal" >  --%>
												<button type="button" id="btn-myModal" class="main-css-imgWrapper" data-toggle="modal" data-target="#myModal" data-notifyid="${i.a_no }">

													<img class="main-css-thumbnail" alt="loading"
														src="<%=request.getContextPath()%>/resources/img/${i.getA_img() }">

												</button>
											</div>
										</div>
										<div class="main-css-15v0401">
											<div>
												<div class="main-css-1v0401">액티비티 제주도</div>
												<div class="main-css-2v0401">${i.a_name }</div>
												<div class="main-css-3v0401">${i.getA_seller()}</div>
											</div>
											<div>
												<div class="main-css-4v0401">
													<div class="main-css-5v0401">
														<div class="main-css-6v0401">
															<img alt="icon"
																src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg">
														</div>
													</div>
													856
												</div>
												<%-- 별점 end --%>
												<div class="main-css-10v0401">
													<div class="main-css-11v0401">
														<span class="main-css-11x902oe"> <fmt:formatNumber
																value="${i.getA_price() }" pattern="#,###" />원
														</span>
													</div>
													<span class="main-css-11wj8nz"> <!-- <input class="main-btn-11wj8nz" type="image" src="./resources/img/add.png"> -->
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
							<div class="modal" id="myModal" role="dialog" data-seq="${i.a_no }">
								<div class="modal-dialog">
									<%-- <c:if test="${dto.getA_no() }"> --%>

									<!-- Modal content-->
									<div class="modal-content">
										  <c:forEach var="i" items="${list}" varStatus="status">  
											<%--  <c:set var="dto" value="${Cont }" /> --%>
											<input type="hidden" value="${i.a_no }" id="a_no">
											 <c:out value="${status}" />  -

											<%-- <c:if test="${last}">  --%>


												<%--  <c:out value="${status}" />  --%>
												<%-- <c:if test="0"> --%>
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"></button>
													<h4 class="modal-title">${i.getA_name() }</h4>
												</div>
												<div class="modal-body">
													<p>
													
														<img class="main-css-thumbnail" alt="loading" src="${pageContext.request.contextPath}/resources/img/${i.getA_img() }">
													</p>
													<img class="main-css-thumbnail" alt="loading"
														loading="lazy"
														src="<%=request.getContextPath()%>/resources/img/${i.getA_img_cont() }">

												</div>
												<div class="modal-footer">
													<button class="main-btn-12wj8nz">내일정에 담기</button>
												</div>
												<%--  </c:if>   --%>
											<%-- </c:if> --%>
										 </c:forEach> 
 									</div>


									<%-- </c:if> --%>
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

					
				</div>
					
			</div>	
			<%--가운데 main end --%>	
			<div align="center"><%-- 페이징처리 부분 --%>
					
					
					   <c:if test="${dto.getPage() > dto.getBlock() }">
					      <a href="activity_list.do?page=1">◀◀</a>
					      <a href="activity_list.do?page=${dto.getStartBlock() - 1 }">◀</a>
					   </c:if>
					   
					   <c:forEach begin="${dto.getStartBlock() }"
					                   end="${dto.getEndBlock() }" var="i">
					      <c:if test="${i == dto.getPage() }">
					         <b> <a href="activity_list.do?page=${i }">[${i }]</a></b>
					      </c:if>
					      
					      <c:if test="${i != dto.getPage() }">
					         <a href="activity_list.do?page=${i }">[${i }]</a>
					      </c:if>
					   </c:forEach>
					   
					   <c:if test="${dto.getEndBlock() < dto.getAllPage() }">
					       <a href="activity_list.do?page=${dto.getEndBlock() + 1}">▶</a>
					      <a href="activity_list.do?page=${dto.getAllPage() }">▶▶</a>
					   </c:if>
					   <br> <br>
				
			</div>
		</div>
	
	</div>


</body>
</html>