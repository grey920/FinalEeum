<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 결제</title>
</head>
<body>
	<c:set var="u" value="${userinfo}" />
	<c:set var="r" value="${resData}" />
	<script src="resources/js/jquery-3.5.0.js"></script>
	<script>
		$(function() {
			var IMP = window.IMP;
			var msg;
			IMP.init('imp30525215');

			IMP.request_pay({
								pg : 'inicis', // version 1.1.0부터 지원.
								pay_method : 'card',
								merchant_uid : 'reserve_${r.rs_no}',
								name : '이음 서비스 결제',
								amount : '${r.rs_money}', //판매 가격
								buyer_email : '${u.user_email1}@${u.user_email2}',
								buyer_name : '${u.user_name}',
								m_redirect_url : 'http://localhost:8088/eeum/payments/paycomplete'
							},
							function(rsp) {
								if (rsp.success) {
									var msg = '${r.rs_exid} 전문가 서비스에 대한 결제가 완료되었습니다.';
									location.href = "http://localhost:8088/eeum/payments/paycomplete?id=${r.rs_uid}&rsIndex=${r.rs_no}&price=${r.rs_money}";
									alert(msg);
									opener.parent.olcation.reload();
									self.close();

								} else {
									var msg = '결제에 실패하였습니다.';
									msg += '에러내용 : ' + rsp.error_msg;
									alert(msg);
									self.close();
								}
							});
		})
	</script>
	
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</body>
</html>