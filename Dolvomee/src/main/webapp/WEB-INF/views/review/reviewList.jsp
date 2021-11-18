<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용 후기</title>

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

<script>
	$(function() {
		var rating = $('.review .rating');

		rating.each(function() {
			var targetScore = $(this).attr('data-rate');
			$(this).find('svg:nth-child(-n+' + targetScore + ')').css({
				color : '#F05522'
			});
		});
	});
</script>
<script type="text/javascript">
	function CallReview(n){
		frm.revNum.value = n;
		frm.action = "reviewSelect.do";
		frm.submit();
	}
</script>
</head>
<body>
	<div class="main-content">
		<!-- 		<div class="row"> -->
		<div align="center" style="padding-top:100px; padding-bottom: 100px;">
			<div class="col-12 col-md-6 col-lg-6">
				<div>
					<div><h1 style="color: #6C757D">이용 후기</h1></div>
				</div>
				<div align="right" style="margin-bottom:10px;">
					<button class="btn-solid-sm" type="button" onclick="location.href='reviewForm.do'"><i class="fas fa-paw"></i> 후기작성</button>
				</div><br>
				<c:forEach items="${reviews }" var="review">
					<div class="card" align="left">
						<div class="card-body" onmouseover="this.style.background='#CBF5CB'" onmouseleave="this.style.background='white'" style="cursor: pointer;" onclick="CallReview(${review.revNum})">
							<div class="media">
								<img style="max-width: 60px; max-height: 60px; border-color: #3CB371; border-radius: 50%; margin-right:1rem!important" src="upload/${review.usersImage }" alt="사진 없음">
								<div class="media-body">
									<h4 class="mt-0">${review.usersAddr }</h4>
									<div class="review">
										<div class="rating" data-rate="${review.revLike }">
											<c:forTokens var="item" items="1,2,3,4,5" delims=",">
											<i class="fas fa-star" onclick="ratingEdit(${item})" style="cursor: pointer;"></i>
											</c:forTokens>
										</div>
										<div>${review.writeDate }</div>
									</div>
									<br>
									<p class="mb-0">${review.revContents }</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
<!-- 				<div align="center"> -->
<!-- 					<nav aria-label="..."> -->
<!-- 						<ul class="pagination"> -->
<!-- 							<li class="page-item disabled"><a class="page-link" href="#" -->
<!-- 								tabindex="-1">Previous</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!-- 							<li class="page-item active"><a class="page-link" href="#">2<span -->
<!-- 									class="sr-only">(current)</span> -->
<!-- 							</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">Next</a> -->
<!-- 							</li> -->
<!-- 						</ul> -->
<!-- 					</nav> -->
<!-- 				</div> -->
				<div>
				<form id="frm" action="" method="post">
				<input type="hidden" id="revNum" name="revNum">
			</form>
			</div>
			</div>
		</div>
	</div>
	<!-- pagination긁어올때 가져온 소스들.. -->

	<script src="assets/modules/popper.js"></script>
	<script src="assets/modules/tooltip.js"></script>
	<script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="assets/modules/moment.min.js"></script>
	<script src="assets/js/stisla.js"></script>
	<!-- Template JS File -->
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/custom.js"></script>

</body>
</html>