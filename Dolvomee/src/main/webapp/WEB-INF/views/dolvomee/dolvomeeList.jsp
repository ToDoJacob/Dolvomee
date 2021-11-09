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
<title>돌보미 리스트</title>

<!-- Styles -->
<link rel="stylesheet" href="assets/css/style.css">

<script type="text/javascript">
	function CallDolv(n) {
		console.log(n);
		frm.dolvEmail.value = n;
		frm.submit();

	}
</script>
</head>
<body>
	<div>
		<div>
			<!-- Main Content -->
			<div
				style="padding-left: 280px; padding-right: 280px; padding-top: 200px;">
				<div class="table-responsive">
					<table class="table table-striped">
						<tr>
							<th>이름</th>
							<th>아이디</th>
							<th>연락처</th>
							<th>주소</th>
							<th>경력</th>
							<th>권한</th>
						</tr>
						<c:forEach items="${dolvomees }" var="dolvomee">
							<tr onmouseover='this.style.background="#EBF5EB";'
								onmouseleave='this.style.background="#FFFFFF";'
								onclick="CallDolv('${dolvomee.dolvEmail }')">
								<td><img alt="image" src="assets/img/user1.png"
									class="rounded-circle" width="35" data-toggle="title" title="">
									<div class="d-inline-block ml-1">${dolvomee.dolvName }</div></td>
								<td>${dolvomee.dolvEmail }</td>
								<td>${dolvomee.dolvPhone }</td>
								<td>${dolvomee.dolvAddr }</td>
								<td>${dolvomee.dolvCareer }</td>
								<td>${dolvomee.dolvAuthor }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div>
		<form id="frm" action="dolvomeeSelect.do" method="post">
			<input type="hidden" id="dolvEmail" name="dolvEmail">
		</form>
	</div>
</body>
</html>