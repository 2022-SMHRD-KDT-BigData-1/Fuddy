<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - imgcheck</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />


<style>
* {
	font-family: 'NanumSquareRound';
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

		<!-- 푸띠 로고 -->
		<div class="nav-item">
			<a class="nav-link" href="Main.do"> <img class="logo"
				src="resources/image/FUDDY-logo.png" />
			</a>
		</div>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
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

	<div class="container p-3 my-3 border">

		<form action = "http://127.0.0.1:9000/asd" method = "post">
			<div style="text-align: center">
				<h3>병해충 사진 확인</h3>
			</div>
			<hr />
			<table class="table table-bordered">
				<tr>
					<td><a href="#"><img
							class="rounded float-start d-block w-100" src="resources/image/leaf01.jpg"></a></td>
					<td><a href="#"><img
							class="rounded mx-auto  d-block w-100" src="resources/image/leaf02.jpg"></a></td>
					<td><a href="#"><img
							class="rounded float-end d-block w-100" src="resources/image/leaf03.jpg"></a></td>
				</tr>
				<tr>
					<td><a href="#"><img
							class="rounded float-start d-block w-100" src="resources/image/leaf01.jpg"></a></td>
					<td><a href="#"><img
							class="rounded mx-auto d-block d-block w-100" src="resources/image/leaf02.jpg"></a></td>
					<td><a href="#"><img
							class="rounded float-end d-block w-100" src="resources/image/leaf03.jpg"></a></td>
				</tr>
			</table>
			<div class="mt-3" style="text-align: center;">
				<button class="btn btn-outline-success" type="submit"
					id="inputGroupFileAddon04">제출</button>
			</div>
		</form>

	</div>