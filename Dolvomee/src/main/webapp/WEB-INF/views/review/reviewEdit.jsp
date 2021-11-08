<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 완료</title>
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
		let rating = $('.review .rating');
		rating.each(function() {
			let targetScore = $(this).attr('data-rate');
			$(this).find('svg:nth-child(-n+' + targetScore + ')').css({
				color : '#F05522'
			});
		});
	});
	
	let targetScore = 0;
	function ratingEdit(a){
		let rating = $('.review .rating');
		console.log($('#rating').attr('data-rate', a))
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
	function CallEdit(str) {
		document.frm.modContents.value = document.frm.revContents.value;
		document.frm.modRevLike.value = targetScore;
		if (str == 'E') {
			frm.action = "reviewEdit.do";
		} else {
			frm.action = "reviewDelete.do";
		}
		frm.submit();
}
</script>
</head>
<body>
<div class="main-content">
		<!-- 		<div class="row"> -->
	<div align="center">
		<div>
			<h1>상세 후기</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="" method="post">
				<table>
					<tr>
						<div class="review">
							<div><img style="max-width: 60px; max-height: 60px; border-color: #3CB371; border-radius: 50%;" src="images/puppy.jpg" alt="사진 없음"></div>
							<div class="rating" id="rating" data-rate="${review.revLike }">
							<c:forTokens var="item" items="1,2,3,4,5" delims=",">
								<i class="fas fa-star" onclick="ratingEdit(${item})" style="cursor: pointer;"></i>
							</c:forTokens>
<!-- 								<i class="fas fa-star" onclick="ratingEdit(2)" style="cursor: pointer;"></i> -->
<!-- 								<i class="fas fa-star" onclick="ratingEdit(3)" style="cursor: pointer;"></i> -->
<!-- 								<i class="fas fa-star" onclick="ratingEdit(4)" style="cursor: pointer;"></i> -->
<!-- 								<i class="fas fa-star" onclick="ratingEdit(5)" style="cursor: pointer;"></i> -->
							</div>
						</div>
						<th width="200">${review.usersAddr }
						</th>
						<td width="100" align="right">${review.writeDate }</td>
					</tr>
					<tr>
						<td colspan="5"><textarea rows="12" cols="92" name="revContents">${review.revContents }</textarea>
						</td>
					</tr>
				</table>
				<input type="hidden" id="revNum" name="revNum" value="${review.revNum }">
				<input type="hidden" id="modContents" name="modContents" value="">
				<input type="hidden" id="modRevLike" name="modRevLike" value="">
			</form>
		</div>
		<br>
		<div class="buttons">
           <!--            <a href="#" class="btn btn-primary">Primary</a> -->
			<button class="btn-solid-sm" type="button" onclick="location.href='reviewList.do'">목록으로</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if
				test="${(sessionScope.usersEmail eq review.usersEmail) or (sessionScope.author eq 'admin') }">
				<button class="btn-solid-sm" type="button" onclick="CallEdit('E')">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn-solid-sm" type="button" onclick="CallEdit('D')">삭제</button>
			</c:if>
		</div>
		<br>
	</div>
</div>
</body>
</html>