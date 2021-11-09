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
<title>Invoice &mdash; Stisla</title>


<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="invoice"
							style="padding-left: 280px; padding-right: 280px; padding-top: 200px;">
							<div class="row mt-4">
								<div class="col-md-12">
									<div class="section-title">
										장바구니 <i class="fas fa-paw"></i>
									</div>
									<div class="table-responsive">
										<table class="table table-striped table-hover table-md">
											<tr>
												<th class="text-center">NO</th>
												<th class="text-center">펫시터 정보</th>
												<th class="text-center">견종</th>
												<th class="text-center">서비스</th>
												<th class="text-center">서비스 시작일</th>
												<th class="text-center">서비스 종료일</th>
												<th class="text-right">금액</th>
											</tr>
											<c:forEach items="${carts }" var="cart">
												<tr>
													<td class="text-center">${cart.scheduleNum }</td>
													<td class="text-center">${cart.dolvEmail }</td>
													<td class="text-center">${cart.categCode }</td>
													<td class="text-center">${cart.detailCode }</td>
													<td class="text-center">${cart.scheduleStartdate }</td>
													<td class="text-center">${cart.scheduleEndDate }</td>
													<td class="text-right">${cart.detailPrice }</td>
												</tr>
											</c:forEach>
										</table>
									</div>
									<div class="row mt-4">
										<div class="col-lg-8"></div>
										<div>
											<hr class="mt-2 mb-2">
											<div class="invoice-detail-item" align="right"
												style="padding-right: 50px; padding-top: 10px">
												<div class="invoice-detail-name">Total</div>
												<div class="invoice-detail-value invoice-detail-value-lg">${cart3.detailPrice }원</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<hr>
							<div class="text-md-right">
								<div class="float-lg-left mb-lg-0 mb-3">
									<div align="right"
										style="padding-bottom: 20px; padding-right: 30px;">
										<button type="button" onclick="requestPay()"
											class="btn-solid-sm">
											<i class="fas fa-paw"></i> 결제
										</button>
										<button class="btn-solid-sm">
											<i class="fas fa-times"></i> 삭제
										</button>
									</div>
								</div>
							</div>
							<div class="row mt-4">
								<div class="col-md-12">
									<div class="section-title">
										이용 내역 <i class="fas fa-paw"></i>
									</div>
									<div class="table-responsive">
										<table class="table table-striped table-hover table-md">
											<tr>
												<th class="text-center">NO</th>
												<th class="text-center">펫시터 정보</th>
												<th class="text-center">견종</th>
												<th class="text-center">서비스</th>
												<th class="text-center">서비스 시작일</th>
												<th class="text-center">서비스 종료일</th>
												<th class="text-center">서비스 상태</th>
												<th class="text-right">금액</th>
											</tr>
											<c:forEach items="${carts2 }" var="cart2">
												<tr>
													<td class="text-center">${cart2.scheduleNum }</td>
													<td class="text-center">${cart2.dolvEmail }</td>
													<td class="text-center">${cart2.categCode }</td>
													<td class="text-center">${cart2.detailCode }</td>
													<td class="text-center">${cart2.scheduleStartdate }</td>
													<td class="text-center">${cart2.scheduleEndDate }</td>
													<td class="text-center">${cart2.scheduleStatus }</td>
													<td class="text-right">${cart2.detailPrice }</td>
												</tr>
											</c:forEach>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function requestPay() {
			IMP.init('imp42439175');
			IMP.request_pay({ // param
				pg : "html5_inicis",
				pay_method : "card",
				merchant_uid : "ORD20180131-0000011",
				name : "노르웨이 회전 의자",
				amount : 64900,
				buyer_email : "gildong@gmail.com",
				buyer_name : "홍길동",
				buyer_tel : "010-4242-4242",
				buyer_addr : "서울특별시 강남구 신사동",
				buyer_postcode : "01181"
			}, function(rsp) { // callback
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
				} else {
					var msg = '결제에 실패하였습니다.';
				}
				alert(msg);
			});
		}
	</script>
</body>

</html>