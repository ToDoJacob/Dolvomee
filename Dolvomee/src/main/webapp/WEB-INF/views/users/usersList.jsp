<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>공지목록</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
<script async src="http://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>

<script type="text/javascript">
	function CallUsers(n) {
		console.log(n);
		frm.usersEmail.value = n;
		frm.submit();

	}
</script>
</head>
<body>
	<div>
		<div>
			<!-- Main Content -->
			<div
				style="padding-left: 280px; padding-right: 280px; padding-top: 200px;">
				<div class="table-responsive">
					<table class="table table-striped">
						<tr>
							<th>이름</th>
							<th>아이디</th>
							<th>연락처</th>
							<th>주소</th>
							<th>권한</th>
						</tr>
						<c:forEach items="${users }" var="user">
							<tr onmouseover='this.style.background="#EBF5EB";'
								onmouseleave='this.style.background="#FFFFFF";'
								onclick="CallUsers('${user.usersEmail }')">
								<td><img alt="image" src="assets/img/us.png"
									class="rounded-circle" width="35" data-toggle="title" title="">
									<div class="d-inline-block ml-1">${user.usersName }</div></td>
								<td>${user.usersEmail }</td>
								<td>${user.usersPhone }</td>
								<td>${user.usersAddr }</td>
								<td>${user.usersAuthor }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div>
		<form id="frm" action="usersSelect.do" method="post">
			<input type="hidden" id="usersEmail" name="usersEmail">
		</form>
	</div>
	
	<!-- General JS Scripts -->
	<script src="assets/modules/jquery.min.js"></script>
	<script src="assets/modules/popper.js"></script>
	<script src="assets/modules/tooltip.js"></script>
	<script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="assets/modules/moment.min.js"></script>
	<script src="assets/js/stisla.js"></script>
	
	<!-- JS Libraies -->
	
	<!-- Page Specific JS File -->
	
	<!-- Template JS File -->
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>