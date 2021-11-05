<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta
   content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
   name="viewport">
<link rel="stylesheet"
   href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

</head>
<body>
	<div class="main-content">
		<div align="center">
			<div class="col-12 col-md-6 col-lg-6">
				<table border="1">
					<c:forEach items="${services }" var="service">
						<tr>
							<td colspan="5">
						</tr>
						<tr>
							<td>${service.servNum }</td>
							<td>${service.dolvEmail }</td>
							<td>${service.servList }</td>
							<td>${service.servPlace }</td>
							<td>${service.servPrice }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>


</body>
</html>