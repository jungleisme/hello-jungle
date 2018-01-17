<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">

<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script type="text/javascript">





</script>

</head>
<body>
	<div class="container w-70" style="height: 800px;">
		<form   method="post">
		
		  <div class="form-group">
		    
		    <label for="name">name:</label>
		    <input type="text" name="user.name" class="form-control" id="name" required="required" >

		    <label for="age">age:</label>
		    <input type="number" name="user.age" class="form-control" id="age" required="required">

		    <label for="email">email:</label>
		    <input type="text" name="user.email" class="form-control" id="email" required="required">

		  </div>
		  <div class="form-group">
		  
		   </div>
		  <button  type="submit" class="btn btn-primary">保存</button>
		  <button type="reset" class="btn btn-primary">取消</button>
		  <button type="button" class="btn btn-success" onclick="javascript:history.go(-1)">返回</button>
		  <a href="user!do_query" class="btn btn-warning">返回首页</a>
		</form>
	
	</div>
</body>
</html>