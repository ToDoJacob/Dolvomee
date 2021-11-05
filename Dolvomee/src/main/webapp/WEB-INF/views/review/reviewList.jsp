<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용 후기</title>

<!--  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
   General CSS Files
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  CSS Libraries

  Template CSS
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
	Start GA
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-94034622-3');
  </script>
  -->
</head>
<body>
	<div class="col-12 col-md-6 col-lg-6">
		<div class="card">
			<div class="card-header">
				<h4>이용 후기</h4>
			</div>
			<div class="card-body">
				<ul class="list-unstyled">
					<c:forEach items="${reviews }" var="review">
						<li class="media"><img class="mr-3"
							src="${review.usersImage }"
							alt="사진 없음">
							<div class="media-body">
								<h5 class="mt-0 mb-1">${review.usersAddr }</h5>
								<p>${review.revContents }</p>
							</div></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>