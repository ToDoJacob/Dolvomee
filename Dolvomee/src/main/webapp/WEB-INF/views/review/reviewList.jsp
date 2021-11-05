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

<!-- 원래 css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
 <!-- main css -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
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

</head>
<body>
	<div class="main-content">
		<!-- 		<div class="row"> -->
		<div align="center">
			<div class="col-12 col-md-6 col-lg-6">
				<c:forEach items="${reviews }" var="review">
					<div class="card">
						<div class="card-body">
							<div class="media">
								<img class="mr-3" src="images/logo.png" alt="사진 없음">
								<div class="media-body">
									<h3 class="mt-0">${review.usersAddr }</h3>
									<h5 class="mt-0">평점:${review.revLike }</h5>
									<p class="mb-0">${review.revContents }</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>
</body>
</html>