
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>

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


  <div align = "center">
  
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
     
     <a href="<%=request.getContextPath() %>/activity_list.do">[액티비티 목록]</a>
      
    <br><br><br><br><br><br>


    <button type="button" class="btn btn-sm" data-toggle="modal" data-target="#myModal">Open Modal</button>
   
     <!-- Modal -->
     <div class="modal" id="myModal" role="dialog">
       <div class="modal-dialog">
   
         <!-- Modal content-->
         <div class="modal-content">
           <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal"></button>
             <h4 class="modal-title">Modal Header</h4>
           </div>
           <div class="modal-body">
             <p>Some text in the modal.</p>
           </div>
           <div class="modal-footer">
             <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
           </div>
         </div>

       </div>
     </div>
      
  </div>
  
  
 

  
  
</body>
</html>