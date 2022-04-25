<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - MEMBER</title>
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
										<li><a class="dropdown-item" href="MembeCheck.do">회원 정보</a></li>
										<li><a class="dropdown-item" href="MyPrevention.do">방제 신청 현황</a></li>
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
	<div class="container p-3 my-3 " style="width: 380px;">
		<a href="Main.do"> <img class="logo" style="width: 350px;"
			src="resources/image/FUDDY-logo.png" />
		</a>
	</div>
	<div class="container p-3 my-3 border" style="width: 350px">
		<!-- 회원수정 내용 -->
		<h5 style="text-align: center">회원조회 및 수정</h5>
		<hr />
		<form action="#" class="was-validated">
			<!-- 회원 수정 및 탈퇴 컨트롤로 이동 -->

			<div class="form-group">
				<label for="id_f">아이디 </label> <input type="text"
					class="form-control" id="u_id" placeholder="u_id" name="u_id"
					readonly />
			</div>
			<br />
			<div class="form-group">
				<label for="pw_f">비밀번호 </label> <input type="password"
					class="form-control" id="u_pw" placeholder="새로운 비밀번호를 입력해주세요."
					name="u_pw" required />
				<div class="valid-feedback">유효한 비밀번호입니다.</div>
				<div class="invalid-feedback">비밀번호 칸을 바꿔주세요.</div>
			</div>
			<br />
			<div class="form-group">
				<label for="name">이름 </label> <input type="name"
					class="form-control" id="u_name" placeholder="u_name" name="u_name"
					readonly />

			</div>
			<br />
			<div class="form-group">
				<label for="name">성별 </label> <input class="form-check-input"
					type="radio" name="u_gender" id="u_gender" value="male" checked />
				<label class="form-check-label" for="male"> 남성 </label> <input
					class="form-check-input" type="radio" name="u_gender" id="u_gender"
					value="female" /> <label class="form-check-label" for="female">
					여성 </label>
			</div>
			<br />

			<div class="form-group">
				<label for="tel">번호 </label> <input type="tel" class="form-control"
					data-format="ddd-dddd-dddd" id="u_tel" placeholder="u_tel"
					name="u_tel" required />
				<div class="valid-feedback">유효한 번호입니다.</div>
				<div class="invalid-feedback">번호 칸을 바꿔주세요.</div>
			</div>
			<br />

			<div class="form-group">
				<label for="tel">주소 </label> <input type="text" class="form-control"
					data-format="ddd-dddd-dddd" id="u_address" placeholder="u_address"
					name="u_address" required />
				<div class="valid-feedback">유효한 주소입니다.</div>
				<div class="invalid-feedback">주소 칸을 바꿔주세요.</div>
			</div>
			<br />
			<div class="form-group">
				<label for="tel">이메일 </label> <input type="text"
					class="form-control" data-format="ddd-dddd-dddd" id="u_email"
					placeholder="u_email" name="u_email" required />
				<div class="valid-feedback">유효한 이메일 입니다.</div>
				<div class="invalid-feedback">이메일 칸을 바꿔주세요.</div>
			</div>

			<div class="form-group form-check"></div>
			<div style="text-align: center">
				<button type="submit" class="btn btn-outline-success">수정</button>
				<button type="button" class="btn btn-outline-success">
					회원탈퇴<a href="#" class=""></a>
				</button>
			</div>
		</form>
	</div>
</body>
</html>
