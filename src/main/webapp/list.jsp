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
	<div class="container w-70">
	<a href="user!do_save" class="btn btn-danger">添加</a>
		<form action="user!do_query" method="post" class="form-inline" style="width: 850px">
		
			<table class="table table-striped table-bordered table-hover ">
				<thead >
				
					<tr class="table-info">
						<td>编号</td>
						<td>用户名称</td>
						<td>年龄</td>
						<td>邮箱</td>
						<td>创建时间</td>
						<td>更新时间</td>
					
						
					</tr>
					
				</thead>
				<tbody>
					<c:forEach items="${users }" var="temp">
						<tr>
							<td>${temp.id}</td>
							<td>${temp.name}</td>
							
							<td>${temp.age }</td>
							<td>${temp.email}</td>
							
							<td>
								<fmt:formatDate value="${temp.createDate}" pattern="yyyy-MM-dd"/>
							</td>
								<td>
								<fmt:formatDate value="${temp.updateDate}" pattern="yyyy-MM-dd"/>
							</td>
							<td>
							
								<a href="user!to_edit?user.id=${temp.id}" class="btn btn-warning">修改</a>
								<a href="user!do_remove?user.id=${temp.id}" class="btn btn-danger">删除</a>
								
								
								
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<ul class="pagination">
				<li class="page-item">
					<a class="page-link" href="javascript:void();">首页</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="javascript:void();">上一页</a>
				</li>
				<li class="page-item active">
					<a class="page-link" href="javascript:void();">1</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="javascript:void();">2</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="javascript:void();">3</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="javascript:void();">下一页</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="javascript:void();">末页</a>
				</li>
			</ul>
		</form>
	</div>
</body>
</html>