<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Post Create &mdash; Stisla</title>

<!-- General CSS Files -->
<link rel="stylesheet"
	href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

<!-- CSS Libraries -->
<link rel="stylesheet"
	href="assets/modules/summernote/summernote-bs4.css">
<link rel="stylesheet"
	href="assets/modules/jquery-selectric/selectric.css">
<link rel="stylesheet"
	href="assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
	
	<!-- 지정 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gowun+Batang:wght@700&family=Jua&display=swap" rel="stylesheet">

<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->

</head>
<body style="font-family: 'Gowun Batang', serif;">
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12"
								style="padding-left: 280px; padding-right: 280px; padding-top: 200px;">
								<div class="card">
									<div class="card-header">
										<h4>정보수정</h4>
									</div>
									<form id="frm" action="dolvUpdate.do" method="post" >
										<div class="card-body">
											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">이름</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="dolvName" 
														value="${dolvomee.dolvName }">
												</div>
											</div>


											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">비밀번호</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="dolvPwd"
														value="${dolvomee.dolvPwd }">
												</div>
											</div>

											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">연락처</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="dolvPhone"
														value="${dolvomee.dolvPhone }">
												</div>
											</div>

											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">주소</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="dolvAddr"
														value="${dolvomee.dolvAddr }">
												</div>
											</div>

											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">사진</label>
												<div class="col-sm-12 col-md-7">
													<div id="image-preview" class="image-preview">
														<label for="image-upload" id="image-label">Choose
															image</label> <input type="file" name="dolvImage"
															id="image-upload" />
													</div>
												</div>
											</div>
											
											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">소개</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="dolvIntro" 
														value="${dolvomee.dolvIntro }">
												</div>
											</div>

											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">권한</label>
												<div class="col-sm-12 col-md-7">
													<select class="form-control selectric" name="dolvAuthor">
														<option>users</option>
														<option>돌보미</option>
														<option>대기</option>
														<option>admin</option>
													</select>
												</div>
											</div>
										</div>
										<div align="right"
											style="padding-bottom: 30px; padding-right: 30px; padding-top: 30px">
											<span class="nav-item"> <input type="submit"
												class="btn-solid-sm" value="수정"> <input
												type="hidden" id="dolvEmail" name="dolvEmail"
												value="${dolvomee.dolvEmail }">
											</span>
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
</body>
</html>