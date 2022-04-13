<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY -SELECT</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<style>
* {
	font-family: "NanumSquareRound";
}
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}

.logo {
	width: 150px;
}

div#nav.nav-item {
	align-items: center;
}

a.list {
	padding-top: 20px;
}

.t_left {
	text-align: left;
}
</style>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- 네비바 시작 -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<!-- 푸띠 로고 -->
			<div class="nav-item">
				<a class="nav-link" href="Main.do"> <img class="logo"
					src="resources/image/FUDDY-logo.png" />
				</a>
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- 로그인 안했을 때-->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">로그인</a></li>
					<!-- 로그인 화면으로 주소 바꾸세요 -->

					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">회원가입</a></li>
					<!-- 회원가입 화면으로 주소 바꾸세요 -->

					<!-- 로그인 했을 때 -->
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">로그아웃</a></li>
					<!-- 로그아웃 화면으로 주소 바꾸세요 -->

					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">회원관리</a></li>
					<!-- 회원관리화면으로 주소 바꾸세요 -->

					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">문의게시판</a></li>
					<!-- 문의게시판으로 주소 바꾸세요 -->

					<!-- 드롭다운 복붙해서 쓰면 됨 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							제원관리 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
						</ul></li>
					<!-- 드롭다운 여기까지 -->

					<!-- 드롭다운 복붙해서 쓰면 됨 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							방제내역관리 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
						</ul></li>
					<!-- 드롭다운 여기까지 -->

					<!-- 드롭다운 복붙해서 쓰면 됨 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Dropdown </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
						</ul></li>
					<!-- 드롭다운 여기까지 -->
				</ul>
			</div>
		</div>
	</nav>
	<!-- 네비바 끝 -->
	<div class="container mt-3">
		<img src="resources/image/tree2_logo.png" style="width: 100%" />
	</div>
	<!-- 게시판 시작 -->
	<div class="container p-3 my-3 border">
		<div style="text-align: center">
			<h3>게시글 조회</h3>
		</div>
		<hr />

		<table class="table" style="text-align: center;">
			<tbody>
				<tr>

					<td class="table-active"><label for="id_f" class="form-label ">작성자</label></td>
					<td>
						<div>
							<div class="u_name">${vo.u_id }</div>
						</div>
					</td>
					<td class="table-active">작성날짜</td>
					<td>
						<div class="q_date">${vo.q_date }</div>
					</td>
				</tr>
				<tr>
					<td class="table-active"><label for="title" class="form-label">제목</label></td>
					<td><div class="q_title">${vo.q_title }</div></td>
				</tr>
				<tr>
					<td class="table-active"><label for="content"
						class="form-label">내용</label></td>
					<td colspan="3"><div class="q_content">${vo.q_content }</div></td>
				</tr>
			</tbody>
		</table>




		<div class="container p-3 my-3 border">
			<div style="text-align: center">
				<h5>댓글</h5>
				<hr>
			</div>
			<table class="table">
				<thead>
					<tr>
						<td>작성자</td>
						<td>내용</td>
						<td>작성날짜</td>
					</tr>
					
					<c:forEach var="i" items="${comment_list }">
						<tr>
							<td>${i.admin_id}</td>
							<td>${i.cmt_content}</td>
							<td>${i.cmt_date}</td>
						</tr>
					</c:forEach>
				</thead>
			</table>
			<c:choose>
			<c:when test="${empty info }">
			<div class="input-group">
				<span class="input-group-text">${vo.u_id}</span>
				<textarea class="form-control" aria-label="With textarea"></textarea>
			</div>
			</c:when>
		</c:choose>
		</div>
		<div style="text-align: center">
			<a href="Table2.do?pageNum=1">
				<button type="button" class="btn btn-outline-success">목록</button>
			</a>
		</div>
	</div>
</body>
</html>
