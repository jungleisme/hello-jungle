<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container w-70" style="height: 800px;">
	
		<form action="user!do_edit" method="post">
			
		  <div class="form-group">
		   
           <input type="text" name="user.id" value="${user.id }" />
              <label for="name">name:</label>
		    <input  type="text" name="user.name" value="${user.name }" class="form-control" id="name"  >
		    
		     <label for="age">age:</label>
		    <input type="text" name="user.age" value="${user.age }"  class="form-control" id="age"  >
		    
		     <label for="email">email:</label>
		    <input type="text" name="user.email" value="${user.age }"  class="form-control" id="email"  >
	     	 <div class="form-group">
		    
		  </div>
		 
		
		   </div>
		  <button  type="submit"   class="btn btn-primary">提交</button>
		 
		  <button type="reset" class="btn btn-primary">取消</button>
		  
		  
		  <button type="button" class="btn btn-success" onclick="javascript:history.go(-1)">返回</button>
		   
		</form>
	
	</div>
</body>
</html>