<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 후기</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<link rel="stylesheet"
	href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

<!-- 페이지 css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- 메인 Styles -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/fontawesome-all.min.css" rel="stylesheet">
<link href="css/swiper.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<script src="assets/modules/jquery.min.js"></script>

<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>

</head>
<body>
	<div align="center">
		<div>
			<h1>상세 리뷰</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="" method="post">
				<table border="1">
					<tr>
						<th width="70">글번호</th>
						<td width="70" align="center">${notice.nid }</td>
						<th width="100">작성자</th>
						<td width="100" align="center">${notice.name }</td>
						<th width="100">작성일</th>
						<td width="100" align="center">${notice.writeDate }</td>
						<th width="70">조회수</th>
						<td width="70" align="center">${notice.hit }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="7"><textarea cols="92" name="title">${notice.title }</textarea></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="7"><textarea rows="17" cols="92" name="contents">${notice.contents }</textarea>
						</td>
					</tr>
				</table>
				<input type="hidden" id="nid" name="nid" value="${notice.nid }">
				<input type="hidden" id="modContents" name="modContents" value="">
				<input type="hidden" id="modTitle" name="modTitle" value="">
			</form>
		</div>
		<br>
		<div id="foot">
			<button type="button" onclick="location.href='reviewList.do'">뒤로가기</button>
			<c:if
				test="${(sessionScope.id eq notice.id) or (sessionScope.author eq 'admin') }">
				<button type="button" onclick="CallEdit('E')">수정</button>
				<button type="button" onclick="CallEdit('D')">삭제</button>
			</c:if>
		</div>
	</div>
</body>
</html>