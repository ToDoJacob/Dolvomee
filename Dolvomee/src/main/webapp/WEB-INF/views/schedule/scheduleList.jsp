<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="assets/modules/jquery.min.js"></script>
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

<!-- datepicker 추가 -->
<link rel="stylesheet"
	href="assets/modules/bootstrap/css/bootstrap-datepicker.css">
<script src="assets/modules/bootstrap/js/bootstrap-datepicker.js"></script>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">

<script>
	$(function() {
		$('#datePicker').datepicker({
			format : "yyyy-mm-dd", //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
			startDate : 'd', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			endDate : '+10d', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
			autoclose : true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
			calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
			clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
			datesDisabled : [ '2021-11-10', '2021-11-13' ],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
			daysOfWeekDisabled : false, //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
			daysOfWeekHighlighted : false, //강조 되어야 하는 요일 설정
			disableTouchKeyboard : false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
			immediateUpdates : false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
			multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
			multidateSeparator : ",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
			templates : {
				leftArrow : '&laquo;',
				rightArrow : '&raquo;'
			}, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
			showWeekDays : true,// 위에 요일 보여주는 옵션 기본값 : true
			title : "돌보미이름 님 의 스케쥴", //캘린더 상단에 보여주는 타이틀
			todayHighlight : true, //오늘 날짜에 하이라이팅 기능 기본값 :false 
			toggleActive : true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
			weekStart : 0,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
			language : "ko" //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.

		});//datepicker end
	});//ready end
</script>



<script>
	function displayDolvName(dolvName) {
		let name = document.getElementById('selectDolvName');
		console.log(name);
		console.log(dolvName);
		name.innerText = dolvName+" 돌보미님";
	};
	function displayDolvIntro(dolvIntro) {
		let intro = document.getElementById('selectDolvIntro');
		console.log(dolvIntro);
		console.log(intro);
		intro.innerText = dolvIntro;
	}

	function displayDolvImage(dolvImage) {
		let image = document.getElementById('selectDolvImage');
		console.log(dolvImage);
		image.setAttribute("src", "upload/" + dolvImage);
		console.log(image);
	}

	function displayDolvLiketotal(dolvLiketotal) {
		let likeTotal = document.getElementById('dolvLiketotal');
		console.log(dolvLiketotal);
		console.log(likeTotal);
		likeTotal.innerText = dolvLiketotal;
	}

	function displayDolvLikecnt(dolvLikecnt) {
		let likeCnt = document.getElementById('dolvLikecnt')
		console.log(dolvLikecnt);
		console.log(likeCnt);
		likeCnt.innerText = dolvLikecnt;
	}

	function throwDolvEmail(dolvEmail) {
		let demail = document.getElementById('dolvEmail')
		console.log("----------------------- 폼 삽입");
		console.log(dolvEmail);
		console.log(demail);
		demail.setAttribute('value', dolvEmail);
		let uemail = document.getElementById('usersEmail');
		console.log(uemail);
	}
</script>

<script>

// frm, scheduleStartDate, scheduleEndDate, amCode, acCode, dolvEmail, usersEmail
function scheduleAdd(){

	if(!frm.dolvEmail.value==""){
		frm.setAttribute("action","scheduleAdd.do")
		if(!frm.usersEmail.value==""){
			alert("예약이 완료되었습니다 장바구니 페이지에서 결제를 진행합니다")
			frm.submit();
		} else {
			alert("로그인 후 이용바랍니다");
			return false;
		}
	} else {
		alert("예약 신청할 돌보미님을 선택해해주세요");
		return false;
	}






	console.log(frm);
	console.log(frm.scheduleStartDate);
	console.log(frm.scheduleEndDate);
	console.log(frm.amCode);
	//console.log(document.getElementById("acCode");
	//console.log()
	//console.log(frm.acCode);
	console.log(frm.dolvEmail);
	console.log(frm.usersEmail);
	console.log("---------------------------")
	console.log(frm.scheduleStartDate.value);
	console.log(frm.scheduleEndDate.value);
	console.log(frm.amCode.value);
	console.log(frm.acCode.value);
	console.log(frm.dolvEmail.value);
	console.log(frm.usersEmail.value);


	
}


</script>

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
	<div class="liveplese" style="height: 55px"></div>
	<div class="main-content" style="font-weight: bold;">
		<section class="section">

			<div class="section-body"  style="padding-left: 20%;">
				<h2 class="section-title" style="font-family: 'Gowun Dodum', sans-serif;"><i class="fas fa-paw"></i>&nbsp;돌보미</h2>
	

	
				<p class="section-lead"
					style="font-family: 'Gowun Dodum', sans-serif; font-weight: bold;">원하는
					돌보미를 선택해주세요!</p>


				<div class="row" style="font-family: 'Gowun Dodum', sans-serif;">
					<div class="col-12 col-sm-12 col-lg-7" style="padding-bottom: 100px;">
						<div class="card author-box card-primary">
							<div class="card-body">
								<div class="author-box-left">
									<img id="selectDolvImage" alt="image" src="upload/이미지.jpg"
										class="rounded-circle author-box-picture">
									<div class="clearfix"></div>
								</div>
								<div class="author-box-details">
									<div class="author-box-name">


										<a id="selectDolvName">강형욱 돌보미님</a>

									</div>
									<div class="author-box-description">
										<p id="selectDolvIntro">내 반려동물은 왜 이런 행동을 할까? 반려동물의 문제행동은
											하루아침에 생긴 것이 아닙니다. 그들은 꾸준한 신호로 우리에게 말을 걸었을 것입니다. 반려동물이 보내는 신호를
											읽고 그들의 마음을 이해하여 함께 행복하게 살 수 있도록 하는 것이 목표입니다.</p>
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

										<a href="reviewList.do" class="btn" style="font-weight: bold;">후기 보러가기 <i
											class="fas fa-chevron-right"></i></a>


									</div>
								</div>
							</div>
						</div>
						<div class="card card-danger" style="border-top: 2px solid #3cb371">
							<div class="card-header">
								<i class="fas fa-paw"></i>&nbsp;
								<h4>돌보미</h4>
								<!-- <div class="card-header-action">
									<a href="#" class="btn-solid-sm">View
										All <i class="fas fa-chevron-right"></i>
									</a>
								</div> -->
							</div>
							<div class="card-body">
								<div class="owl-carousel owl-theme" id="users-carousel">

									<!--  아이템 들어갈 자리 -->
									<c:forEach items="${dolvs }" var="dolv">
										<form>
											<div class="user-item-flat" style="display: inline-block"
												align="center">
												<div class="user-item">
													<img alt="image" src="upload/${dolv.dolvImage}"
														class="img-fluid">
													<div class="user-details">

														<div class="user-name">${dolv.dolvName } 돌보미님</div>
														<div class="user-cta">
															<a type="button" class="btn-solid-sm"
																onclick="displayDolvName('${dolv.dolvName}'); displayDolvIntro('${dolv.dolvIntro}'); displayDolvImage('${dolv.dolvImage}'); displayDolvLikecnt('${dolv.dolvLikecnt}'); displayDolvLiketotal('${dolv.dolvLiketotal}'); throwDolvEmail('${dolv.dolvEmail}'); "
																style="font-weight: bold;">정보 보기</a>
														</div>
													</div>
												</div>
											</div>
										</form>
									</c:forEach>

									<!--  아이템 들어갈 자리 -->

								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-sm-12 col-lg-5">
						<div class="card profile-widget"
							style="width: 350px; margin: 10px;">
							<div class="profile-widget-header">
								<div class="profile-widget-items">
									<div class="profile-widget-item">


										<div class="profile-widget-item-label"  style="font-weight: bold; font-size: 0.9rem;">돌본횟수</div>
										<div class="profile-widget-item-value" id="dolvLikecnt">187</div>
									</div>
									<div class="profile-widget-item">
										<div class="profile-widget-item-label"  style="font-weight: bold; font-size: 0.9rem;">좋아요</div>

										<div class="profile-widget-item-value" id="dolvLiketotal">6,8K</div>
									</div>
								</div>
							</div>
							<div class="profile-widget-description pb-0 form-group"
								style="margin-left: 10px;">
								<!-- 돌보미 스케쥴 달력 들어갈자리 -->

								<label style="font-size: 0.9rem;">돌보미 스케줄</label>&nbsp;&nbsp;<input type="text" id="datePicker" class="form"
									 value="2021-11-08" style="width: 180px; border: 1px solid #ced4da;">

								<!-- 돌보미 스케쥴 달력 들어갈자리 -->
							</div>
							<form id="frm" name="frm" method="post"
								style="margin-left: 20px;">
								<div style="margin-left: 10px;">
									<div class="form-group" style="display: flex;">
										<label style="font-size: 0.9rem;">시작일</label> <input type="date" id="scheduleStartDate"
											name="scheduleStartDate" class="form-control"

											style="width: 230px; margin-left: 3.5%; font-weight: bold;"></div>
                 			   <div class="form-group" style="display: flex;">
            			       <label style="font-size: 0.9rem;">종료일</label>
										<input type="date" id="scheduleEndDate" name="scheduleEndDate"
											class="form-control" style="width: 230px; margin-left: 3.5%; font-weight: bold;">
									</div>

									<div class="form-group" style="display: flex;">
										<label style="font-size: 0.9rem;">반려동물 선택</label>
										<select class="form-control" id=amCode name=amCode
											style="width: 190px; margin-left: 3.5%; font-weight: bold;">

											<option>소형견</option>
											<option>중형견</option>
											<option>대형견</option>
										</select>
									</div>
									<div class="form-group" style="display: flex;">

										<label style="font-size: 0.9rem;">서비스 선택</label>
										 <select class="form-control" id=acCode name=acCode
											style="width: 190px; margin-left: 7.5%; font-weight: bold;">

											<option>산책</option>
											<option>돌봄</option>
											<option>미용</option>
											<option>병원</option>
										</select>
									</div>
									<div>
										<input type="hidden" id="dolvEmail" name="dolvEmail" value="${dolv.dolvEmail }">
										<input type="hidden" id="usersEmail" name="usersEmail"
											value="${usersEmail }">
										<div align="center">
											<button class="btn btn-primary" type="button"
												onclick="scheduleAdd()">예약 신청하기</button>
											<div class="addblank" style="height: 15px"></div>
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>


				</div>
			</div>

		</section>

	</div>


	<!-- General JS Scripts -->

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