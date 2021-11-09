<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Components &rsaquo; User &mdash; Stisla</title>

<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">

<!-- 지정 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gowun+Batang:wght@700&family=Jua&display=swap" rel="stylesheet">

<script type="text/javascript">
	function CallEdit(str) {
		if (str == 'E') {
			frm.action = "dolvUpdateForm.do";
		} else {
			frm.action = "dolvomeeDelete.do";
		}
		frm.submit();
	}
</script>

</head>
<body style="font-family: 'Gowun Batang', serif;">
	<div id="app" align="center">
		<div class="main-wrapper main-wrapper-1">
			<!-- Main Content -->
			<div 
				style="padding-left: 280px; padding-right: 280px; padding-top: 200px; padding-bottom: 100px;">
				<section class="section">
					<div class="section-body" >
						<div>
							<div class="col-12 col-sm-12 col-lg-5" align="center">
								<div class="card profile-widget">
									<div class="profile-widget-header">
										<img alt="image" src="assets/img/us.png"
											class="rounded-circle profile-widget-picture">
										<div class="profile-widget-items">
											<div class="profile-widget-item">
												<div class="profile-widget-item-label">내역</div>
												<div class="profile-widget-item-value">10</div>
											</div>
											<div class="profile-widget-item">
												<div class="profile-widget-item-label">평점</div>
												<div class="profile-widget-item-value">4.9</div>
											</div>
										</div>
									</div>
									<div class="profile-widget-description pb-0">
										<div class="profile-widget-name">${dolvomees.dolvName }
											<div class="text-muted d-inline font-weight-normal">
												<div class="slash"></div>${dolvomees.dolvEmail }</div>
										</div>
										<p>비밀번호 ${dolvomees.dolvPwd }</p>
										<p>전화번호 ${dolvomees.dolvPhone }</p>
										<p>주 소 ${dolvomees.dolvAddr }</p>
										<p>권 한 ${dolvomees.dolvAuthor }</p>
									</div>
									<span class="nav-item" align="right"
										style="padding-bottom: 20px; padding-right: 30px;"> 
										<a class="btn-solid-sm" onclick="CallEdit('E')">수정</a>
										<a class="btn-solid-sm" onclick="CallEdit('D')">삭제</a>
									</span>
									<div >
										<form id="frm" action="" method="post">
											<input type="hidden" id="dolvEmail" name="dolvEmail"
												value="${dolvomees.dolvEmail }">
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
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
	<script src="assets/modules/owlcarousel2/dist/owl.carousel.min.js"></script>

	<!-- Page Specific JS File -->
	<script src="assets/js/page/components-user.js"></script>

	<!-- Template JS File -->
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>