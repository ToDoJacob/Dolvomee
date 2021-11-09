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
				buyer_name : ${users.usersName },
				buyer_tel : "010-4242-4242",
				buyer_addr : "서울특별시 강남구 신사동",
				buyer_postcode : "01181"
			}, function(rsp) { // callback
				 if ( rsp.success ) {
				        var msg = '결제가 완료되었습니다.';
				        msg += '고유ID : ' + rsp.imp_uid;
				        msg += '상점 거래ID : ' + rsp.merchant_uid;
				        msg += '결제 금액 : ' + rsp.paid_amount;
				        msg += '카드 승인번호 : ' + rsp.apply_num;
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				    }
				    alert(msg);
				});
		}
	</script>

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
												<th class="text-center">서비스 종류</th>
												<th class="text-center">서비스 시작일</th>
												<th class="text-center">서비스 종료일</th>
												<th class="text-right">금액</th>
											</tr>
											<tr>
												<td class="text-center">${cart.scheduleNum }</td>
												<td class="text-center">${cart.dolvEmail }</td>
												<td class="text-center">${cart.scheBufNum }</td>
												<td class="text-center">${cart.scheduleStartdate }</td>
												<td class="text-center">${cart.scheduleEndDate }</td>
												<td class="text-right">${cart.detailPrice }</td>
											</tr>
										</table>
									</div>
									<div class="row mt-4">
										<div class="col-lg-8"></div>
										<div class="col-lg-4 text-right">
											<div class="invoice-detail-item">
												<div class="invoice-detail-name">Subtotal</div>
												<div class="invoice-detail-value">$670.99</div>
											</div>
											<div class="invoice-detail-item">
												<div class="invoice-detail-name">Shipping</div>
												<div class="invoice-detail-value">$15</div>
											</div>
											<hr class="mt-2 mb-2">
											<div class="invoice-detail-item">
												<div class="invoice-detail-name">Total</div>
												<div class="invoice-detail-value invoice-detail-value-lg">$685.99</div>
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
												<th class="text-center">서비스 종류</th>
												<th class="text-center">서비스 시작일</th>
												<th class="text-center">서비스 종료일</th>
												<th class="text-center">서비스 상태</th>
												<th class="text-right">금액</th>
											</tr>
											<tr>
												<td class="text-center">${cart.scheduleNum }</td>
												<td class="text-center">${cart.dolvEmail }</td>
												<td class="text-center">${cart.scheBufNum }</td>
												<td class="text-center">${cart.scheduleStartdate }</td>
												<td class="text-center">${cart.scheduleEndDate }</td>
												<td class="text-center">${cart.scheduleStatus }</td>
												<td class="text-right">${cart.detailPrice }</td>
											</tr>
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


</body>
</html>