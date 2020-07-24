function go(page) {
	var limit = $('#viewcount').val();
	var data = "limit=" + limit + "&state=ajax&page=" + page;
	ajax(data);
}


// 총 2페이지 페이징 처리된 경우
// 이전 1 2 다음
// 현재 페이지가 1페이지인 경우 아래와 같은 페이징 코드가 필요
// <li class="page-item"><a class="page-link gray">이전&nbsp;</a></li>
// <li class="page-item"><a class="page-link gray">1</a></li>
// <li class="page-item"><a class="page-link" href="javascript:go(2)">2</a></li>
// <li class="page-item"><a class="page-link"
// href="javascript:go(2)">다음&nbsp;</a></li>

// 현재 페이지가 2페이지인 경우 아래와 같은 페이징 코드가 필요
// <li class="page-item"><a class="page-link"
// href="javascript:go(1)">이전&nbsp;</a></li>
// <li class="page-item"><a class="page-link" href="javascript:go(1)">1</a></li>
// <li class="page-item"><a class="page-link gray">2</a></li>
// <li class="page-item"><a class="page-link gray">다음&nbsp;</a></li>
function setPaging(href, digit) {
	output += "<li class=page-item>";
	gray = "";
	if (href == "") {
		gray = " gray";
	}
	anchor = "<a class='page-link" + gray + "'" + href + ">" + digit
			+ "</a></li>";
	output += anchor;
}


$(function() {
	$("#viewcount").change(function() {
		go(1);// 보여줄 페이지를 1페이지로 설정합니다.
	});// change end

	$("button").click(function() {
		location.href = "BoardWrite.bo";
	})
})