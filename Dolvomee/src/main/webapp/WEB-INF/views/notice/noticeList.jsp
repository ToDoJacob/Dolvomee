<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	function CallNotice(n) {
		frm.noticeNum.value=n;
		frm.submit();
	}
	
	window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-94034622-3');
</script>
</head>
<body>
	<div style="padding-left: 280px; padding-right: 280px; padding-top: 200px; padding-bottom: 200px;">
		<div class="table-responsive">
			<div align="right">
				<span class="nav-item">
					<button class="btn-solid-sm" type="button" onclick="location.href='noticeForm.do'">글쓰기</button>
				</span>
			</div>
			<br>
			<table class="table">
				<thead>
					<tr>
						<th>글번호</th>
						<th>아이디</th>
						<th>글제목</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${notices }" var="notice">
						<tr	onmouseover='this.style.background="#EBF5EB";'
							onmouseleave='this.style.background="#FFFFFF";'
							onclick="CallNotice(${notice.noticeNum })">
							<td>${notice.noticeNum }</td>
							<td>${notice.noticeId }</td>
							<td>${notice.noticeTitle }</td>
							<td>${notice.noticeDate }</td>
							<td>${notice.hit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div> <!-- 숨겨져 있는 폼 -->
			<form id ="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="noticeNum" name="noticeNum">
			</form>
		</div>
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