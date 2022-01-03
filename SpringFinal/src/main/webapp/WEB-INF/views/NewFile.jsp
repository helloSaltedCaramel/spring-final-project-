<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<title> 트래블래너 :: 나다운 진짜 여행  </title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <script type="text/javascript">
    
  $(button).on('click',function(){
        $('#myModal').modal('show');
    });
</script>
  
<style type="text/css">

  @font-face {

    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-style: normal;

  }
  

   h2 {
   
     margin-left:90px;
     font-family: 'Pretendard-Regular';
     font-size:20px;
     align:left;
   
   }
   
   p {
     
     margin-left:90px;
     font-family: 'Pretendard-Regular'; 
     font-size:15px;
     color:lightgray;
     align:left;
   
   }
   
   h1 {
   
     margin-left:90px;
     font-family: 'Pretendard-Regular'; 
     font-size:20px;
     align:left;
      
   }

  .myModal {
  
  width: 80%;
  height: 80%;
 
  }
  
  .btn-light {
  
  width:26%;
  height:15%;
  font-size:10px;
  text-align:center;
  
  }
    
</style>
</head>
<body>

<div class="css-1weatn5--Home-style--headerBackground"></div>
    
    <jsp:include page="../views/include/place_category.jsp"/>

    <!-- 숙소 리스트를 카드형으로 -->
    <div class = "container" align = "center">
     <c:forEach var = "rows" items = "${List }">          
       
       <!-- 카드 이미지 -->
       <div class = "card mb-3" style = "max-width: 750px; max-height:180px;">            
          <div class = "row g-0">               
           <div class = "col-md-2">             
              <img src = "<%=request.getContextPath() %>/resources/image/${rows.getP_main() }" width = "210" height = "180" class = "rounded float-start">    
           </div>           
           
           <!-- 카드 본문 -->
           <div class="col-md-6">
             <div class = "card-body">
               <h2 align = "left"> ${rows.getP_name() } </h2>
             <p align = "left"> ${rows.getP_grade() }성급  | ${rows.getP_location() } </p>
             <br>          
              <h1 align = "left"> ${rows.getP_price() }원   <button type = "button" class = "btn btn-light" data-toggle = "modal" data-target = "#myModal" data-seq="${rows.getP_no() }"> 상세 정보 </button></h1>
               <!-- onclick = "location.href='place_content.do?no=${rows.getP_no() }'" -->
               
              <!-- Modal -->
              <div class = "modal" id = "myModal" role = "dialog" data-seq = "${rows.getP_no() }">
                <div class = "modal-dialog">
                <c:forEach var = "rows" items = "${List }">
                  <!-- Modal content-->
                  <div class = "modal-content">
                    
                    <div class = "modal-header">                  
                         <h5 align = "left"> Information </h5>          
                    </div>
                    
                    <div class = "modal-body">
                                                     
                    </div>
                    
                    <div class = "modal-footer">
                      <button type = "button" class = "btn btn btn-light" data-dismiss = "modal"> close </button>
                    </div>
                  
                  </div>
                  </c:forEach>                     
                </div>
              </div>
                  <!-- Modal end -->
                  
              </div>
            </div>
         
         </div>
       </div>
     </c:forEach>

      <br><br><br><br><br><br><br><br>
     
      <%-- 페이징처리 부분 --%>
      <c:set var = "dto" value = "${Paging }" />
        <c:if test = "${dto.getPage() > dto.getBlock() }">
          <a href = "place_list.do?page=1"> ◀◀ </a>
          <a href = "place_list.do?page=${dto.getStartBlock() - 1 }"> ◀ </a>
        </c:if>
      
        <c:forEach begin = "${dto.getStartBlock() }" end = "${dto.getEndBlock() }" var = "i">
          <c:if test = "${i == dto.getPage() }">
            <b><a href = "place_list.do?page=${i }"> [${i }] </a></b>
          </c:if>
         
          <c:if test = "${i != dto.getPage() }">
            <a href = "place_list.do?page=${i }"> [${i }] </a>
          </c:if>
        </c:forEach>
      
        <c:if test = "${dto.getEndBlock() < dto.getAllPage() }">
          <a href = "place_list.do?page=${dto.getEndBlock() + 1}"> ▶ </a>
          <a href = "place_list.do?page=${dto.getAllPage() }"> ▶▶ </a>
        </c:if>
      
        <br><br>
        
    </div>
                  
   <br><br><br><br><br><br><br><br> 
    
</body>
</html>