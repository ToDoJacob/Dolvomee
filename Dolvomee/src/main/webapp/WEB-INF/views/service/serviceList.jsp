<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div class="liveplese" style="height: 15px"></div>
	<div class="main-content">
		<div align="center">
			<div class="col-12 col-md-6 col-lg-6">
				<table border="1">
					<c:forEach items="${services }" var="service">
						<tr>
							<td colspan="5">대충 공백</td>
						</tr>
						<tr>
							<td>${service.servNum }</td>
							<td>${service.dolvEmail }</td>
							<td>${service.servList }</td>
							<td>${service.servPlace }</td>
							<td>${service.servPrice }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>


</body>
</html>