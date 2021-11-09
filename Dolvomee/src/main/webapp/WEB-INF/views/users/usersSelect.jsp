<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Components &rsaquo; User &mdash; Stisla</title>

<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">

<script type="text/javascript">
	function CallEdit(str) {
		if (str == 'E') {
			frm.action = "usersUpdateForm.do";
		} else {
			frm.action = "usersDelete.do";
		}
		frm.submit();
	}
</script>

</head>
<body>
	<div id="app" align="center">
		<div class="main-wrapper main-wrapper-1">
			<!-- Main Content -->
			<div
				style="padding-left: 280px; padding-right: 280px; padding-top: 200px; padding-bottom: 100px;">
				<section class="section">
					<div class="section-body">
						<div>
							<div class="col-12 col-sm-12 col-lg-5">
								<div class="card profile-widget">
									<div class="profile-widget-header">
										<img alt="image" src="upload/${users.usersImage }"
											class="rounded-circle profile-widget-picture">
										<div class="profile-widget-items">
											<div class="profile-widget-item">
												<div class="profile-widget-item-label">내역</div>
												<div class="profile-widget-item-value">4</div>
											</div>
											<div class="profile-widget-item">
												<div class="profile-widget-item-label">후기</div>
												<div class="profile-widget-item-value">3</div>
											</div>
										</div>
									</div>
									<div class="profile-widget-description pb-0">
										<div class="profile-widget-name">${users.usersName }
											<div class="text-muted d-inline font-weight-normal">
												<div class="slash"></div>${users.usersEmail }</div>
										</div>
										<p>비밀번호 : ${users.usersPwd }</p>
										<p>전화번호 : ${users.usersPhone }</p>
										<p>주 소 : ${users.usersAddr }</p>
										<p>권 한 : ${users.usersAuthor }</p>
									</div>
									<div align="right"
										style="padding-bottom: 20px; padding-right: 30px;">
										<span class="nav-item"> <a class="btn-solid-sm"
											onclick="CallEdit('E')">수정</a> <a
											class="btn-solid-sm" onclick="CallEdit('D')">삭제</a>
										</span>
									</div>
									<div>
										<form id="frm" action="" method="post">
											<input type="hidden" id="usersEmail" name="usersEmail"
												value="${users.usersEmail }">
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