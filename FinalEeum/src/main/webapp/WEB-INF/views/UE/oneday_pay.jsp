<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원데이 클래스 결제</title>
</head>
<body>
	<c:set var="u" value="${userinfo}" />
	<c:set var="a" value="${applyData}" />
	<script src="resources/js/jquery-3.5.0.js"></script>
	<script>
		$(function() {
			var IMP = window.IMP;
			var msg;
			IMP.init('imp30525215');

			IMP.request_pay({
								pg : 'inicis', // version 1.1.0부터 지원.
								pay_method : 'card',
								merchant_uid : 'oneday_${a.AP_INDEX}',
								name : '${a.AP_TITLE}',
								amount : '${a.AP_PRICE}', //판매 가격
								buyer_email : '${u.user_email1}@${u.user_email2}',
								buyer_name : '${u.user_name}',
								m_redirect_url : 'http://localhost:8088/eeum/payments/complete'
							},
							function(rsp) {
								if (rsp.success) {
									var msg = '${a.AP_TITLE} 결제가 완료되었습니다.';
									location.href = "http://localhost:8088/eeum/payments/complete?id=${a.AP_ID}&apIndex=${a.AP_CINDEX}&price=${a.AP_PRICE}";
									alert(msg);
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
	$(function(){
	location.href="";
	})
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</body>
</html>