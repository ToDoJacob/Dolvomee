<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>공지사항 세부내용</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
<script async src="http://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-94034622-3');
  
  function CallEdit(str) {
		if(str == 'E') {
			frm.action = "noticeEditForm.do";
		} else {
			frm.action = "noticeDelete.do";
		}
		frm.submit();
	}
</script>
</head>
<body>
	<div style="padding-left: 280px; padding-right: 280px; padding-top: 200px; padding-bottom: 200px">
		<div class="table-responsive">
			<table class="table table-borderless">
				<thead>
					<tr>
						<th scope="col">작성자</th>
						<td>${notice.noticeId }</td>
						<th scope="col">작성일자</th>
						<td>${notice.noticeDate }</td>
						<th scope="col">조회수</th>
						<td>${notice.hit }</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">제목</th>
						<td colspan="7">${notice.noticeTitle }</td>
					</tr>
					<tr>
						<th scope="row">내용</th>
						<td colspan="7">
							${notice.noticeContents }
						</td>
					</tr>
				</tbody>
			</table>
		</div><br>
		<div align="center">
			<button type="button" onclick="location.href='noticeList.do'" class="btn-solid-sm">목록</button>&nbsp;&nbsp;&nbsp;
			<c:if test="${author =='ADMIN' || noticeId == notice.noticeId }">
				<button type="button" class="btn-solid-sm" onclick="CallEdit('E')">수정</button>&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn-solid-sm" onclick="CallEdit('D')">삭제</button>
			</c:if>
		</div>
		<div>
		<form id="frm" action="" method="post">
			<input type="hidden" id="noticeNum" name="noticeNum" value="${notice.noticeNum }">
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