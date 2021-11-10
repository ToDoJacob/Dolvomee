<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>dolvomee</title>

    <!-- Styles -->
    <link href="http://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!-- 지정 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gowun+Batang:wght@700&family=Jua&display=swap" rel="stylesheet">
</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">

<!-- 강아지 사진부분 -->
<div id="header" class="header">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-xl-5">
				<div class="text-container">

					<div class="section-title">Welcome to dolvomee</div>
					<h1 class="h1-large" style="font-family: 'Dongle', sans-serif; font-size: 4rem;">행복한 하루를 선물하세요</h1>
					
					<p class="p-large" style="font-family: 'Gowun Batang', serif;">여행, 출장, 늦은 퇴근에도 걱정마세요!<br>
						가족같은 펫시터가 내 아이와 함께합니다.</p>
					<a class="btn-solid-lg" href="scheduleList.do">내 주변 펫시터 찾기 <i class="fas fa-paw"></i></a>
				</div>
				<!-- end of text-container -->
			</div>
			<!-- end of col -->
			<div class="col-lg-6 col-xl-7" style="padding-top: 70px;">
				<div class="image-container" >
					<img class="img-fluid" src="images/main2.jpg" alt="alternative" style="width: 630px" >
				</div>
				<!-- end of image-container -->
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
</div>

<!-- 서비스 종류 -->
<!-- Services -->
    <div id="services" class="cards-1" style="background-color: #d4efd2;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Card -->
                    <div class="card" style="background-color: #ffffff; border: 1px solid #ffffff; padding-bottom: 20px;">
                        <div class="card-body1">
                        <div align="center">
                            <h5 class="card-title" style="font-family: 'Jua', sans-serif; font-size: 2rem;">산책</h5>
                            <img src="images/dog1.jpg" style="width: 200px; height: 200px;" >
                        </div>
                            <ul class="list-unstyled li-space-lg"><br>
                                <li class="d-flex">
                                    <i class="fas fa-paw"></i>
                                    <div class="flex-grow-1" style="font-family: 'Gowun Batang', serif; font-size: 1.1rem; font-weight: bold;">목줄과 하네스가 연결된 이중산책줄을 통한 안전한 산책!</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card" style="background-color: #ffffff;">
                        <div class="card-body1">
                        <div align="center">
                            <h5 class="card-title" style="font-family: 'Jua', sans-serif; font-size: 2rem;">목욕</h5>
                            <img src="images/dog2.png" style="width: 200px; height: 200px;" >
                        </div>
                            <ul class="list-unstyled li-space-lg"><br>
                                <li class="d-flex">
                                    <i class="fas fa-paw"></i>
                                    <div class="flex-grow-1" style="font-family: 'Gowun Batang', serif; font-size: 1.1rem; font-weight: bold;">전용 샴푸와 마사지를 통한 목욕!</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card" style="background-color: #ffffff;">
                        <div class="card-body1">
                        <div align="center">
                            <h5 class="card-title" style="font-family: 'Jua', sans-serif; font-size: 2rem;">미용</h5>
                            <img src="images/dog3.png" style="width: 200px; height: 200px;" >
                        </div>
                            <ul class="list-unstyled li-space-lg"><br>
                                <li class="d-flex">
                                    <i class="fas fa-paw"></i>
                                    <div class="flex-grow-1" style="font-family: 'Gowun Batang', serif; font-size: 1.1rem; font-weight: bold;">전문 미용사의 숙련된 미용!</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- end of card -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of cards-1 -->
    <!-- end of services -->

    <!-- 펫시터 후기 -->
	<!-- Testimonials -->
    <div class="slider-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider swiper-container-horizontal">
                            <div class="swiper-wrapper" style="transform: translate3d(-1644px, 0px, 0px); transition-duration: 0ms;"><div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="2" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">내 반려견에게 맞는 방식을 찾아 드리고 우리 아이와 함께 살아가는 부분에 있어 서로 양보해야할 부분은 양보하면서 함께 살아갈 수 있게 도와드리겠습니다.</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="upload/dolv2이미지.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">김동관 돌보미선생님</div>
                                                    <div class="occupation">브리더 3년차</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">과학적이고 체계적인 원리를 통해 접근하며, 보호자님들과 강아지들이 함께 행복한 삶을 살 수 있는 솔루션을 제공해 드리겠습니다.</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="upload/dolv3이미지.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">정은진 돌보미선생님</div>
                                                    <div class="occupation">브리더 7년차</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div>
                                
                                <!-- Slide -->
                                <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="0" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">교육을 통해 보호자님의 반려견과 함께 살아가는 기쁨을 만들 것이며, 서로의 유대를 강화시켜 줄 것입니다.</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="upload/dolv4이미지.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">최선영 돌보미선생님</div>
                                                    <div class="occupation">브리더 10년차</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="1" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">다양한 훈련 경험을 바탕으로 보호자님께 올바른 관계를 형성 할 수 있도록 도와드리겠습니다.</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="upload/dolv5이미지.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">박종현 돌보미선생님</div>
                                                    <div class="occupation">브리더 17년차</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                            <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev" data-swiper-slide-index="0" style="width: 478px; margin-right: 70px;">
                                       <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">내 반려견에게 맞는 방식을 찾아 드리고 우리 아이와 함께 살아가는 부분에 있어 서로 양보해야할 부분은 양보하면서 함께 살아갈 수 있게 도와드리겠습니다.</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="upload/dolv2이미지.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">김동관 돌보미선생님</div>
                                                    <div class="occupation">브리더 3년차</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

								</div> <!-- end of swiper-wrapper -->
        
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <br><br>
            
            
                <div class="row">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider swiper-container-horizontal">
                            <div class="swiper-wrapper" style="transform: translate3d(-1644px, 0px, 0px); transition-duration: 0ms;"><div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="2" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">교육을 통해 보호자님의 반려견과 함께 살아가는 기쁨을 만들 것이며, 서로의 유대를 강화시켜 줄 것입니다.22222</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="images/testimonial-3.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">Mary Longhorn</div>
                                                    <div class="occupation">Manager - Firstdev</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">교육을 통해 보호자님의 반려견과 함께 살아가는 기쁨을 만들 것이며, 서로의 유대를 강화시켜 줄 것입니다.33333</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="images/testimonial-4.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">Ronny Drummer</div>
                                                    <div class="occupation">Designer - Sawdust</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div>
                                
                                <!-- Slide -->
                                <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="0" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">교육을 통해 보호자님의 반려견과 함께 살아가는 기쁨을 만들 것이며, 서로의 유대를 강화시켜 줄 것입니다.4444444</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="images/testimonial-1.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">Samantha Bloom</div>
                                                    <div class="occupation">Team Leader - Syncnow</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide" data-swiper-slide-index="3" style="width: 478px; margin-right: 70px;">
                                    <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">과학적이고 체계적인 원리를 통해 접근하며, 보호자님들과 강아지들이 함께 행복한 삶을 살 수 있는 솔루션을 제공해 드리겠습니다.</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="upload/dolv3이미지.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">정은진 돌보미선생님</div>
                                                    <div class="occupation">브리더 7년차</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide --> <!-- end of swiper-slide -->

                                <!-- Slide -->
                                <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="2" style="width: 478px; margin-right: 70px;">
                                     <div class="card">
                                        <img class="quotes" src="images/quotes.svg" alt="alternative">
                                        <div class="card-body1">
                                            <p class="testimonial-text">교육을 통해 보호자님의 반려견과 함께 살아가는 기쁨을 만들 것이며, 서로의 유대를 강화시켜 줄 것입니다.</p>
                                            <div class="details">
                                                <img class="testimonial-image" src="upload/dolv4이미지.jpg" alt="alternative">
                                                <div class="text">
                                                    <div class="testimonial-author">최선영 돌보미선생님</div>
                                                    <div class="occupation">브리더 10년차</div>
                                                </div> <!-- end of text -->
                                            </div> <!-- end of testimonial-details -->
                                        </div>
                                    </div> 
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

								</div> <!-- end of swiper-wrapper -->
        
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div><br> <!-- end of slider-1 -->
    <!-- end of testimonials -->



	<!-- Scripts -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
    <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
<!-- end of body -->
<!-- end of header -->
</html>