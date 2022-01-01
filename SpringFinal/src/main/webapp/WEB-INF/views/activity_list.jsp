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
											<img class="cat-icon" alt="all icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_category_all_md_colored.svg">
												<div class="cat-label">전체</div>
										</button>
									</li>
									<li>
										<button class="cat-act-selected">
											<img class="cat-icon" alt="acttivity icon" src="https://d2ur7st6jjikze.cloudfront.net/offer_category_icons/3_original_1610608255.png?1610608255">
												<div class="cat-label">액티비티</div>
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
							 
								<div class="main-offer">
									<div class="main-css-kaeiru">
											<div class="main-css-imgWrapper">
												<img class="main-css-thumbnail" alt="loading" loading="lazy" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/101144/549341_medium_1608606483.jpg?1608606483">
											</div>
										</div>
										<div class="main-css-15v0401">
										<div>
											<!-- <div class="main-css-1v0401">액티비티 제주도</div> -->
											<div class="main-css-2v0401">${i.getA_name() }</div>
											<div class="main-css-3v0401">${i.getA_location()}</div>
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
														58,500원
													</span>
												</div>
												<span class="main-css-11wj8nz">
													<input class="main-btn-11wj8nz" type="button" value="담기">
												</span>
											</div>
										</div>
									</div>
								</div>
								
								</c:forEach>
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