<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<script>
	let targetScore = 0;
	function ratingEdit(a){
		let rating = $('.review .rating');
		$('#rating').attr('data-rate', a)
		rating.each(function() {
			targetScore = $(this).attr('data-rate');
			
			let stars = document.getElementsByClassName('fa-star')
			
			for(let i=0; i<stars.length; i++){
				stars[i].setAttribute('style','color:rgb(94,101,117); cursor: pointer;')
			}
			$(this).find('svg:nth-child(-n+' + targetScore + ')').css({
				color : '#F05522'
			});
		});
	};

// function ratingEdit(a){
// 		let rating = $('.review .rating');
// 		$('#rating').attr('data-rate', a);
// 		rating.each(function() {
// 			let targetScore = $(this).attr('data-rate');
			
// 			let stars = document.getElementsByClassName('fa-star')
			
// 			for(let i=0; i<stars.length; i++){
// 				stars[i].setAttribute('style','color:rgb(94,101,117); cursor: pointer;')
// 			}
// 			$(this).find('svg:nth-child(-n+' + targetScore + ')').css({
// 				color : '#F05522'
// 			});
// 		});
// 	};
		
</script>
<script type="text/javascript">
	function insertReview() {
		document.frm.revContents.value = document.frm.contents.value;
		document.frm.revLike.value = targetScore;
		frm.action = "reviewInsert.do";
		frm.submit();
		}
</script>
</head>
<body>
<div class="main-content">
	<div align="center" style="padding-top:100px;">
		<div>
			<h1>후기 작성</h1>
		</div>
		<div style="padding-top:20px;">
			<form id="frm" name="frm" action="" method="post">
				<table>
					<tr>
						<div class="review">
							<div><img style="max-width: 60px; max-height: 60px; border-color: #3CB371; border-radius: 50%;" src="upload/${user.usersImage }" alt="사진 없음"></div>
							<div class="rating" id="rating" name="rating" data-rate="">
							<c:forTokens var="item" items="1,2,3,4,5" delims=",">
								<i class="fas fa-star" onclick="ratingEdit(${item})" style="cursor: pointer;"></i>
							</c:forTokens>
							</div>
						</div>
					</tr>
					<tr>
						<td colspan="5"><textarea rows="8" cols="80" name="contents"></textarea>
						</td>
					</tr>
				</table>
				<input type="hidden" id="revLike" name="revLike" value="">
				<input type="hidden" id="revContents" name="revContents" value="">
				<input type="hidden" id="usersEmail" name="usersEmail" value="${user.usersEmail }">
				<input type="hidden" id="usersAddr" name="usersAddr" value="${user.usersAddr }">
				<input type="hidden" id="usersImage" name="usersImage" value="${user.usersImage }">
			</form>
		</div>
		<br>
		<div class="buttons" style="padding-bottom:80px;">
			<button class="btn-solid-sm" type="button" onclick="location.href='reviewList.do'">뒤로가기</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn-solid-sm" type="button" onclick="insertReview()">글작성</button>
		</div>
		<br>
	</div>
</div>
</body>
</html>