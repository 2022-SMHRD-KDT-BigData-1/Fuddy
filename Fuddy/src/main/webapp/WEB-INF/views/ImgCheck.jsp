<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page isELIgnored="false"%>

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

	</nav>
	<!-- 네비바 끝 -->

	<div class="container mt-3">
		<img src="resources/image/tree2_logo.png" style="width: 100%" />
	</div>

	<div class="container p-3 my-3 border">
		<!-- 플라스크 이동 폼 -->


		<form action="http://f2.project-jupyter.ddns.net:8872/yolov5" method="POST">

			<div style="text-align: center">
				<h3>병해충 사진 확인</h3>
			</div>
			<hr />

			<div class="row row-cols-2">

				<!-- aws주소 -->
				<!-- http://(aws주소):8080/files/		현재 : 44.203.185.159-->
				<!--<c:set var="path" value="http://44.203.185.159:8080/files/" />-->
				  	<c:set var="path" value="resources/files/" />

				<c:forEach var="i" items="${ImageList }" varStatus="j">
					<div class="col">
						<c:set var ="date" value="${i.p_date }"/>
						<c:set var ="folder" value="${i.p_folder }"/>
						<button type="button" class="btn btn-link" data-bs-toggle="modal"
							data-bs-target="#exampleModal${j.count}">
							<!--<c:out
								value="http://3.84.149.191:8080/file/${i.p_folder}/${i.p_name}" />-->
							<img id="img${j.count }"
								class="rounded float-start d-block w-100"
								src="http://44.203.185.159:8080/files/${i.p_folder}/${i.p_name}" />
						</button>
					</div>
					<div class="modal fade" id="exampleModal${j.count}" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-fullscreen">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel${j.count} }">${i.p_name}
									</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body container">
									<img id="img${j.count }"
										class="rounded float-start d-block w-100"
										src="http://44.203.185.159:8080/files/${i.p_folder}/${i.p_name}">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" value="${i.p_folder }" name="folder${j.count }">
					<input type="hidden" value="${i.p_name}" name="name${j.count }">
				</c:forEach>
			</div>
			<input type="hidden" value="${info.u_id }" name="u_id"> <input
				type="hidden" value="${date }" name="p_date"> <input
				type="hidden" value="${folder }" name="p_folder">

			<%-- <c:set var="p_name" value="${ImageList[0].p_name }" />
					<c:set var="p_list" value="${ImageList[0].p_list }" />
					<td><c:out value="${p_name}" /></td>
					<td><c:out value="${p_list }" /></td>
					<c:set var="path" value="resources/files/" />
					<c:set var="p_name2" value="qo1515_2022-04-18_14" />
					<c:set var="p_list2" value="image.jfif" />
					<td><img src="${path }${p_name2}/${p_list2 }">
					<td><img src="${path }${p_name}/${p_list }"> --%>

			<div class="mt-3" style="text-align: center;">
				<button class="btn btn-outline-success" type="submit"
					id="inputGroupFileAddon04">제출</button>
			</div>
		</form>

	</div>
</body>