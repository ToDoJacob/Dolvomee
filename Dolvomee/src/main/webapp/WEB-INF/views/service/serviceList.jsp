<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<meta charset="UTF-8">
<title>Insert title here</title>

<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<link rel="stylesheet"
	href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

<!-- 부트스트랩 스타일 css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">

<!-- 유저 컴포넌트 추가를 위한 라이브러리  -->
<!-- CSS Libraries -->
<link rel="stylesheet"
	href="assets/modules/bootstrap-social/bootstrap-social.css">
<link rel="stylesheet"
	href="assets/modules/owlcarousel2/dist/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="assets/modules/owlcarousel2/dist/assets/owl.theme.default.min.css">


<!-- main css -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/fontawesome-all.min.css" rel="stylesheet">
<link href="css/swiper.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!-- 부트스트랩 적용을 위한 레이어처리 -->
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
<!-- 부트스트랩 적용을 위한 레이어처리 끝 -->

</head>
<body>
	<div class="liveplese" style="height: 15px"></div>
	<div class="main-content">
		<section class="section">
			<div class="section-body">
				<h2 class="section-title">돌보미</h2>
				<p class="section-lead">이렇게 많은 돌보미 분들과 함께하고 있습니다 !!</p>

				<div class="row">
					<div class="col-12 col-sm-12 col-lg-7">
						<div class="card author-box card-primary">
							<div class="card-body">
								<div class="author-box-left">
									<img alt="image" src="#"
										class="rounded-circle author-box-picture">
									<div class="clearfix"></div>
								</div>
								<div class="author-box-details">
									<div class="author-box-name">
										<a href="#">돌보미 이름 들어갈자리</a>
									</div>
									<div class="author-box-job">대중소 애완견, 혹은 고양이등 전문분야 정보</div>
									<div class="author-box-description">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consequat.</p>
									</div>
									<div class="mb-2 mt-3"></div>
									<a href="#" class="btn btn-social-icon mr-1 btn-facebook">
										<i class="fab fa-facebook-f"></i>
									</a> <a href="#" class="btn btn-social-icon mr-1 btn-twitter">
										<i class="fab fa-twitter"></i>
									</a> <a href="#" class="btn btn-social-icon mr-1 btn-github"> <i
										class="fab fa-github"></i>
									</a> <a href="#" class="btn btn-social-icon mr-1 btn-instagram">
										<i class="fab fa-instagram"></i>
									</a>
									<div class="w-100 d-sm-none"></div>
									<div class="float-right mt-sm-0 mt-3">
										<a href="#" class="btn">후기 보러가기 <i
											class="fas fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="card card-danger">
							<div class="card-header">
								<h4>Users</h4>
								<div class="card-header-action">
									<a href="#" class="btn btn-danger btn-icon icon-right">View
										All <i class="fas fa-chevron-right"></i>
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="owl-carousel owl-theme" id="users-carousel">

									<!--  아이템 들어갈 자리 -->
									<c:forEach items="${services }" var="service">
									<div class="user-item-flat" style="display: inline-block"
										align="center">
										<div class="user-item">
											<img alt="image" src="#"
												class="img-fluid">
											<div class="user-details">
												<div class="user-name">${service.dolvEmail }</div>
												<div class="text-job text-muted">돌보미 전문분야</div>
												<div class="user-cta">
													<button class="btn btn-primary follow-btn"
														data-follow-action="alert('user1 followed');"
														data-unfollow-action="alert('user1 unfollowed');">Follow</button>
												</div>
											</div>
										</div>
									</div>
									</c:forEach>
									<!--  아이템 들어갈 자리 -->




								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-sm-12 col-lg-5">
						<div class="card profile-widget">
							<div class="profile-widget-header">
								<div class="profile-widget-items">
									<div class="profile-widget-item">
										<div class="profile-widget-item-label">Posts</div>
										<div class="profile-widget-item-value">187</div>
									</div>
									<div class="profile-widget-item">
										<div class="profile-widget-item-label">Followers</div>
										<div class="profile-widget-item-value">6,8K</div>
									</div>
									<div class="profile-widget-item">
										<div class="profile-widget-item-label">Following</div>
										<div class="profile-widget-item-value">2,1K</div>
									</div>
								</div>
							</div>
							<div class="profile-widget-description pb-0">
								<div class="profile-widget-name">
									Hasan Basri
									<div class="text-muted d-inline font-weight-normal">
										<div class="slash"></div>
										Web Developer
									</div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
							<div class="card-footer text-center pt-0">
								<div class="font-weight-bold mb-2 text-small">Follow Hasan
									On</div>
								<a href="#" class="btn btn-social-icon mr-1 btn-facebook"> <i
									class="fab fa-facebook-f"></i>
								</a> <a href="#" class="btn btn-social-icon mr-1 btn-twitter"> <i
									class="fab fa-twitter"></i>
								</a> <a href="#" class="btn btn-social-icon mr-1 btn-github"> <i
									class="fab fa-github"></i>
								</a> <a href="#" class="btn btn-social-icon mr-1 btn-instagram">
									<i class="fab fa-instagram"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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