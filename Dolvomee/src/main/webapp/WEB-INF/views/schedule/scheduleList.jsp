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

<script>
	$(function() {	
		$('#datePicker').datepicker({
		    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    startDate: 'd',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		    endDate: '+10d',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		    datesDisabled : ['2021-11-10','2021-11-13'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		    daysOfWeekDisabled : false,	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		    daysOfWeekHighlighted : false, //강조 되어야 하는 요일 설정
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
		    title: "돌보미이름 님 의 스케쥴",	//캘린더 상단에 보여주는 타이틀
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		    
		});//datepicker end
	});//ready end
</script>

<script>
function displayDolv(dolvName){
	
	let xhtp = new XMLHttpRequest();
	
	console.log(dolvName);
	let name = document.getElementById('selectDolvName');
	let image = document.getElementById('selectDolvImage');
	let intro = document.getElementById('selectDolvIntro');
	
	name.innerText = "fdfdfdf";
	
   	$.ajax({
		url : "scheduleDolvomeeSelect.do",
		type : "post",
		data : {"dolvName" : dolvName},
		dataType : "text",
		success : function(result){
			console.log(result);			
		},
		error : function(result){
			console.log(result);
		}
	});
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
									<img id="selectDolvImage" alt="image" src="${dolvSelect.dolvImage }"
										class="rounded-circle author-box-picture">
									<div class="clearfix"></div>
								</div>
								<div class="author-box-details">
									<div class="author-box-name">
										<a id="selectDolvName">${dolvSelect.dolvName }</a>
									</div>
									<div class="author-box-description">
										<p id="selectDolvIntro">${dolvSelect.dolvIntro } 
											Lorem ipsum dolor sit amet,
											consectetur adipisicing elit, sed do eiusmod tempor
											incididunt ut labore et dolore magna aliqua. Ut enim ad minim
											veniam, quis nostrud exercitation ullamco laboris nisi ut
											aliquip ex ea commodo consequat.</p>
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
								<h4>돌보미</h4>
								<div class="card-header-action">
									<a href="#" class="btn btn-danger btn-icon icon-right">View
										All <i class="fas fa-chevron-right"></i>
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="owl-carousel owl-theme" id="users-carousel">

									<!--  아이템 들어갈 자리 -->
									<c:forEach items="${dolvs }" var="dolv">
										<form>
											<div class="user-item-flat" style="display: inline-block"
												align="center">
												<div class="user-item">
													<img alt="image" src="#" class="img-fluid">
													<div class="user-details">
														<div class="user-name">${dolv.dolvName }</div>
														<div class="text-job text-muted">돌보미 전문분야</div>
														<div class="user-cta">
															<input type="button" class="btn btn-primary"
																onclick="displayDolv('${dolv.dolvName}')">정보보기
															</button>
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
						<div class="card profile-widget">
							<div class="profile-widget-header">
								<div class="profile-widget-items">
									<div class="profile-widget-item">
										<div class="profile-widget-item-label">돌본횟수</div>
										<div class="profile-widget-item-value">187</div>
									</div>
									<div class="profile-widget-item">
										<div class="profile-widget-item-label">좋아요</div>
										<div class="profile-widget-item-value">6,8K</div>
									</div>
								</div>
							</div>
							<div class="profile-widget-description pb-0" align="center"
								style="margin: 25px;">
								<!-- 돌보미 스케쥴 달력 들어갈자리 -->
								<input type="text" id="datePicker" class=form-control
									" value="2021-11-08">
								<!-- 돌보미 스케쥴 달력 들어갈자리 -->
							</div>
							<form>
								<div>
									<div class="form-group" style="display: flex;">
										<label>시작일</label> <input type="date" id="startdate"
											name="startdate" class="form-control"
											style="width: 240px; margin-left: 3.5%;"> <label>종료일</label>
										<input type="date" id="enddate" name="enddate"
											class="form-control" style="width: 240px; margin-left: 3.5%;">
									</div>
									<div class=form-group>
										<label style="margin-right: 127px;">반려동물 종류를 선택해주세요</label> <label>요청하실
											서비스의 종류를 선택해주세요</label>
									</div>
									<div class="form-group" style="display: flex;">
										<select class="form-control"
											style="width: 242px; margin-left: 9.5%;">
											<option>소형견</option>
											<option>중형견</option>
											<option>대형견</option>
										</select> <select class="form-control"
											style="width: 242px; margin-left: 9.5%;">
											<option>산책</option>
											<option>돌봄</option>
											<option>미용</option>
											<option>병원</option>
										</select>
									</div>
									<div align="center">
										<button class="btn btn-primary" type="button">예약 신청하기</button>
										<div class="addblank" style="height: 15px"></div>
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