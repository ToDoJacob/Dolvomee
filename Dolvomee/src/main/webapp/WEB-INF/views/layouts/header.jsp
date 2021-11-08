<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">


    <!-- Webpage Title -->
    <title>home</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">

</head>
<script type="text/javascript">
	
</script>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">
    
    <!-- Navigation -->
    <nav id="navbarExample" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
        <div class="container" style="height: 100px">

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="home.do"><img src="images/logo.png"
            alt="alternative"></a> 

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text" href="index.html">Zinc</a> -->

            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ms-auto navbar-nav-scroll">

                    <li class="nav-item">
                        <a class="nav-link" href="serviceList.do">펫시터 찾기</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reviewList.do">이용 후기</a>
                    </li>
                    <c:if test="${not empty usersEmail || not empty dolvEmail }">
                    <li class="nav-item">
                        <a class="nav-link" href="usersSelect.do">내 정보</a>
                    </li>
                    </c:if>
                       <li class="nav-item">
                        <a class="nav-link" href="noticeList.do">공지사항</a>
                    </li>
                    
                    <li class="nav-item dropdown">
					<c:if test="${usersAuthor == 'admin'}">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">List</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="usersList.do">회원 리스트</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="dolvomeeList.do">펫시터 리스트</a></li>
                        </ul>
                    </c:if>
                    </li>

                </ul>
              <a class="fas fa-shopping-cart" href="usersCart.do" style="color: #3cb371;"></a>
                <span class="nav-item">
                 	 <a class="btn-solid-sm" href="dolvRegisterForm.do">펫시터 지원</a>
                    <c:if test="${empty usersEmail && empty dolvEmail}">
                   		<a class="btn-solid-sm" href="usersLoginForm.do">로그인</a>
                    </c:if>
                    <c:if test="${not empty usersEmail || not empty dolvEmail}">
                   		<a class="btn-solid-sm" href="logout.do">로그아웃</a>
                    </c:if>
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


<!-- General JS Scripts -->
  <script src="assets/modules/jquery.min.js"></script>
  <script src="assets/modules/popper.js"></script>
  <script src="assets/modules/tooltip.js"></script>
  <script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="assets/modules/moment.min.js"></script>
  <script src="assets/js/stisla.js"></script>

  <!-- JS Libraies -->

  <!-- Page Specific JS File -->

  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <script src="assets/js/custom.js"></script>
</body>
</html>