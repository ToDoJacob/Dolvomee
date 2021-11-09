<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>대화상대 리스트</title>

<!-- General CSS Files -->
<link rel="stylesheet"
	href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

<!-- CSS Libraries -->

<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-94034622-3');
</script>
<script type="text/javascript">
	function CallQna(n){
		frm.dolvEmail.value = n;
		frm.submit();
	}
</script>
</head>
<body>
	<div id="app" style="padding-top: 100px;">
		<div class="main-wrapper main-wrapper-1">
			<!-- Main Content -->
			<div class="main-content">
				<div style="padding-bottom: 20px;">
					<h1 align="center">1:1 문의</h1>
				</div>
				<section class="section">
					<div class="section-body">
						<div class="row align-items-center justify-content-center">
							<div class="col-12 col-sm-6 col-lg-4">
								<div class="card">
									<div class="card-header">
										<h4 align="center">문의하고 싶은 돌보미를 선택해 주세요.</h4>
									</div>
									<div class="card-body">
										<ul class="list-unstyled list-unstyled-border">
											<c:forEach items="${dolvomees }" var="dolvomee">
												<li class="media" onmouseover="this.style.background='#CBF5CB'" onmouseleave="this.style.background='white'" style="cursor: pointer;" 
												onclick="CallQna('${dolvomee.dolvEmail }')">
														<img alt="image" class="mr-3 rounded-circle" width="50" src="assets/img/avatar/avatar-1.png" alt="사진 없음">
													<div class="media-body">
														<div class="mt-0 mb-1 font-weight-bold">${dolvomee.dolvName }</div>
													</div>
												</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<div>
					<form id="frm" action="qna.do" method="post">
						<input type="hidden" id="dolvEmail" name="dolvEmail">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>