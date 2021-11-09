<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Bootstrap Components &rsaquo; Table &mdash; Stisla</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
<script async src="http://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-94034622-3');
</script>
</head>
<body>
<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12" style="padding-left: 320px; padding-right: 320px; padding-top: 100px; padding-bottom: 200px;">
								<div class="card">
									<div class="card-header">
										<h4>게시글 작성</h4>
									</div>
									<form id="frm" action="noticeInsert.do" method="post">
										<div class="card-body">
									
											
											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">작성자</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" id="noticeId" name="noticeId"
														value="${notice.noticeId }">
												</div>
											</div>
											
											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">작성일자</label>
												<div class="col-sm-12 col-md-7">
													<input type="date" class="form-control" id="noticeDate" name="noticeDate">
												</div>
											</div>


											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">제목</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" id="noticeTitle" name="noticeTitle">
												</div>
											</div>

											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">내용</label>
												<div class="col-sm-12 col-md-7">
													<textarea class="form-control" id="noticeContents" name="noticeContents"></textarea>
												</div>
											</div>
					                      <div align="right">
					                        <input class="btn-solid-sm" type="submit" value="저 장">&nbsp;&nbsp;&nbsp;
					                        <input class="btn-solid-sm" type="reset" value="취 소">&nbsp;&nbsp;&nbsp;
					                        <input class="btn-solid-sm" type="button" value="목 록" onclick="location.href='noticeList.do'">
					                      </div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	
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