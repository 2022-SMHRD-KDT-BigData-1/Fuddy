<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - lookup</title>
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
					<c:choose>
						<c:when test="${empty info and empty d_info}">
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="Login.do">로그인</a></li>
							<!-- 로그인 화면으로 주소 바꾸세요 -->

							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="Join.do">회원가입</a></li>
							<!-- 회원가입 화면으로 주소 바꾸세요 -->
						</c:when>

						<c:otherwise>
							<c:choose>
								<c:when test="${!empty info }">

									<!-- 로그인 했을 때 -->
									<li class="nav-item"><a class="nav-link"
										aria-current="page" href="logout.do">로그아웃</a></li>

									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
										role="button" data-bs-toggle="dropdown" aria-expanded="false">
											마이페이지 </a>
										<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
											<li><a class="dropdown-item" href="MembeCheck.do">회원
													정보</a></li>
											<li><a class="dropdown-item" href="MyPrevention.do">방제
													신청 현황</a></li>
										</ul></li>

									<li class="nav-item"><a class="nav-link"
										aria-current="page" href="Table2.do?pageNum=1">문의 게시판</a></li>
									<!-- 로그아웃 화면으로 주소 바꾸세요 -->
									<li class="nav-item"><a class="nav-link"
										aria-current="page" href="ImgInput.do">방제 신청</a></li>
									<!-- 로그아웃 화면으로 주소 바꾸세요 -->
								</c:when>
								<c:otherwise>
									<!-- 로그인 했을 때 -->
									<li class="nav-item"><a class="nav-link"
										aria-current="page" href="logout.do">로그아웃</a></li>
									<!-- 로그아웃 화면으로 주소 바꾸세요 -->
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
										role="button" data-bs-toggle="dropdown" aria-expanded="false">
											관리 페이지 </a>
										<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
											<li><a class="dropdown-item" href="AdminList.do">드론기사</a></li>
											<li><a class="dropdown-item" href="Spec.do">제원 관리</a></li>
											<li><a class="dropdown-item" href="#">회원 관리</a></li>
										</ul></li>
									<!-- 회원관리화면으로 주소 바꾸세요 -->

									<li class="nav-item"><a class="nav-link"
										aria-current="page" href="d_Table2.do?pageNum=1">문의게시판</a></li>
									<!-- 문의게시판으로 주소 바꾸세요 -->


									<!-- 드롭다운 복붙해서 쓰면 됨 -->
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="3" id="navbarDropdown"
										role="button" data-bs-toggle="dropdown" aria-expanded="false">
											방제신청내역 </a>
										<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
											<li><a class="dropdown-item" href="#">기본 정보</a></li>
											<li><a class="dropdown-item" href="#">내역 수정</a></li>
											<li><a class="dropdown-item" href="#">사진</a></li>
										</ul></li>

								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
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
		<h3 style="text-align: center">문의 게시판</h3>
		<hr />
		<table class="table table-hover">
			<thead>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>아이디</td>
				</tr>
			</thead>

			<tbody>
				<!-- 게시판 반복문 시작해야 할 곳 -->
				<c:set var="i" value="1" />
				<c:forEach var="board" items="${requestScope.list}" varStatus="i">

					<tr>
						<td>${i.count}</td>
						<td><a href="d_Select.do?q_num=${board.q_num }">${board.q_title}</a></td>
						<td>${board.u_id }</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<div class="container-fluid">
			<nav class="navbar navbar-light">
				<div class="container-fluid">
					<button type="button" class="btn btn-outline-success"
						style="visibility: hidden">글작성</button>
					<form class="d-flex">
						<select class="form-select" style="height: 40px; width: 100px"
							aria-label="Default select example">
							<option selected></option>
							<option value="title">제목</option>
							<option value="id_f">아이디</option>
							<option value="content">내용</option>
						</select> <input class="form-control me-2" type="search" placeholder="검색"
							aria-label="Search" />
						<button style="width: 80px" class="btn btn-outline-success"
							type="submit">검색</button>
					</form>
				</div>
			</nav>
		</div>
		<!-- 페이징 구간 -->
		<nav aria-label="Page navigation example">

			<ul style="justify-content: center" class="pagination">
				<c:set var="back" value="${postStart/10}" />
				<li class="page-item"><a class="page-link"
					href="d_Table2.do?pageNum=<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back }" />"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>

				<c:forEach begin="1" end="${endPageNum}" var="i">
					<c:choose>
						<c:when test="${postEnd eq 10 }">
							<li class="page-item"><a class="page-link"
								href="d_Table2.do?pageNum=${i}">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="d_Table2.do?pageNum=${i}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>


				<li class="page-item"><a class="page-link"
					href="d_Table2.do?pageNum=<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back+2 }" />"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>

		<script type="text/javascript">
			
		</script>
</body>
</html>
