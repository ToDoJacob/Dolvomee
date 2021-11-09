<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Components &rsaquo; Chat Box &mdash; Stisla</title>

<!-- General CSS Files -->
<link rel="stylesheet"
	href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

<!-- CSS Libraries -->

<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
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
<!-- /END GA -->
</head>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row align-items-center justify-content-center">
							<div class="col-12 col-sm-6 col-lg-4">
								<div class="card chat-box" id="mychatbox">
									<div class="card-header">
										<h4>Chat with Rizal</h4>
									</div>
									<div class="card-body chat-content"></div>
									<div class="card-footer chat-form">
										<form id="chat-form">
											<input type="text" class="form-control"
												placeholder="Type a message">
											<button class="btn btn-primary">
												<i class="far fa-paper-plane"></i>
											</button>
										</form>
									</div>
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