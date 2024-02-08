<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="./js/menu.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>후기 쓰기</title>
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<style type="text/css">
#like {
	width: 100px;
}

.container {
	width: 1408px;
}

#content {
	margin: 0;
	padding: 0;
	margin: auto;
	width: 500px;
	height: 200px;
	text-align: center;
}

.write {
	display: block;
}

.writeall {
	margin: 0;
	padding: 0;
	margin: auto;
	height: 719px;
	text-align: center;
	background-color: #F2E3CF;
	text-align: center;
}

#title {
	width: 300px;
}

footer {
	margin: auto;
	background-color: #F2E3CF;
}

.footercontent {
	text-align: center;
	padding: 5px;
}

#title2 {
	font-family: "Arial", sans-serif;
	font-size: 16px;
	font-weight: bold;
	color: #333;
}

#review{
	font-size: 36px;
}

#grade{
	width: 50px;
}
</style>
<script>
	$(document).ready(function() {
		$(document).on('keyup', '#title', function() {
			let text = $(this).val().replace(/\s/g, "");
			if (text.length > 10) {
				alert("10자 넘었어요.");
				$(this).val(text.substr(0, 10));
			}
			$(".title1").text("제목 " + text.length + "/10");
		});

		$(document).on('keyup', '#content', function() {
			let text = $(this).val().replace(/\s/g, "");
			if (text.length > 50) {
				alert("50자 넘었어요.");
				$(this).val(text.substr(0, 50));
			}
			$(".textarea1").text("글쓰기 " + text.length + "/50");
		});

	});

	function titlecheck() {
		let title = document.getElementById("title").value.replace(/\s/g, "");
		if (title.length < 1) {
			alert("제목은 최소 1글자 이상 입력해주세요.");
			$("#title").focus();
			return false;
		}
		return true;
	}
	
	function contentcheck() {
		let content = document.getElementById("content").value.replace(/\s/g, "");
		if (content.length < 5) {
			alert("내용은 최소 5글자 이상 입력해주세요.");
			$("#content").focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>
		<%@ include file="nav.jsp"%>
		<div>
		<%@ include file="chat.jsp" %>
			<div>
				<article class="writeall">
					<span id="review">후기 쓰기</span>
					<form action="./write" method="post" onsubmit="return titlecheck() && contentcheck()">
						<div class="write">
							<span id="title2">가게 이름 :</span><input type="text" id="title"
								name="title" placeholder="10자 이하로 입력 해 주세요."><label
								class="title1"></label><br>
						</div>
						평점 : <select id = "grade" name="grade">
							<optgroup label="평점">
								<option
									<c:if test="${row.grade eq 1}">selected="selected"</c:if>
									value="1">1/5</option>
								<option
									<c:if test="${row.grade eq 2}">selected="selected"</c:if>
									value="2">2/5</option>
								<option
									<c:if test="${row.grade eq 3}">selected="selected"</c:if>
									value="3">3/5</option>
								<option
									<c:if test="${row.grade eq 4}">selected="selected"</c:if>
									value="4">4/5</option>
								<option
									<c:if test="${row.grade eq 5}">selected="selected"</c:if>
									value="5">5/5</option>
							</optgroup>
						</select>
						<div>
							<input type="text" id="content" name="content"
								placeholder="50자 이하로 입력 해 주세요."><br> <label
								class="textarea1"></label>
							<button class="textarea" type="submit">등록하기</button>
						</div>
					</form>
					<button onclick="url('./board')">게시판으로</button>
				</article>
			</div>
		</div>
		<footer class="footer">
			<%@ include file="footer.jsp"%>
		</footer>
	</div>
</body>

<script type="text/javascript">
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 500
		});

	});
</script>
</html>