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
<title>공지사항 수정</title>

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

<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->

</head>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12" style="padding-left: 320px; padding-right: 320px; padding-top: 100px;">
								<div class="card">
									<div class="card-header">
										<h4>정보수정</h4>
									</div>
									<form id="frm" action="noticeEdit.do" method="post">
										<div class="card-body">
									
											
											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">작성자</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="noticeId"
														value="${notice.noticeId }">
												</div>
											</div>


											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">제목</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="noticeTitle"
														value="${notice.noticeTitle }">
												</div>
											</div>

											<div class="form-group row mb-4">
												<label
													class="col-form-label text-md-right col-12 col-md-3 col-lg-3">내용</label>
												<div class="col-sm-12 col-md-7">
													<input type="text" class="form-control" name="noticeContents"
														value="${notice.noticeContents }">
												</div>
											</div>
											<div align="right">
											<span class="nav-item"> <input type="submit"
												class="btn-solid-sm" value="수정">
												<input type="hidden" id="noticeNum" name="noticeNum"
												value="${notice.noticeNum }">
											</span>
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
</body>
</html>