<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card">
		<div class="card-header">
			<h4>Simple</h4>
		</div>
		<div class="card-body">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">이름</th>
						<th scope="col">아이디</th>
						<th scope="col">전화번호</th>
						<th scope="col">주소</th>
							<th scope="col">권한</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${dolvomees }" var="dolvomee">
						<tr>
							<td>${dolvomee.dolvName }</td>
							<td>${dolvomee.dolvEmail }</td>
							<td>${dolvomee.dolvPhone }</td>
							<td>${dolvomee.dolvAddr }</td>
							<td>${dolvomee.dolvCareer }</td>
							<td>${dolvomee.dolvAuthor }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>