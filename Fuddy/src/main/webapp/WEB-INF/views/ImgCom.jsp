<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - IMGCOM</title>
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



		<div style="text-align: center">
			<h3>병해충 판독 완료</h3>
		</div>
		<hr />
		<figure class="text-start">
			<blockquote class="blockquote">
				<p>※ N(빨간색테두리) : 정상</p>
				<p>※ LB(분홍색테두리) : 잎마름병</p>

				
					<button type="button" class="btn btn-secondary"
						data-bs-toggle="tooltip1" data-bs-placement="bottom"
						title="주로 잎과 잎자루에 발생하며, 간혹 줄기와 과실에도 발생한다.
              잎에서는 처음 수침상의 둥근 점무늬로 나타나고, 진전되면 갈색의 원형 내지 부정형 병반으로 확대된다.
              심하게 감염된 잎은 누렇게 변하여 말라 죽는다.
              잎자루와 줄기에서는 처음에 작은 점무늬로 나타나고, 진전되면 병반이 감염 부위를 둘러싸게 되고, 그 위쪽은 말라 죽게 된다.
              과실에서는 처음에 갈색의 원형반점이 약간 움푹 들어간 형태로 나타나며, 진전되면 분화구처럼 확대되고, 후에 감염부위가 쪼개지기도 한다.">
						발생환경</button>
					<button type="button" class="btn btn-secondary"
						data-bs-toggle="tooltip2" data-bs-placement="bottom"
						title=" 병원균은 병든 부위에서 균사나 분생포자의 형태로 겨울을 지낸 후, 분생포자를 형성하여 공기전염 한다.
            감염은 16～32℃ 에서 일어나며, 병 발생 적온은 20～28℃이다.
            이 병은 참깨, 콩 등의 다른 작물에서도 발생한다.">
						증상설명</button>
					<button type="button" class="btn btn-secondary"
						data-bs-toggle="tooltip3" data-bs-placement="bottom"
						title=" 건전한 종자를 선별하고, 소독하여 파종한다. 퇴비를 시용하여 작물의 초세를 좋게 한다.
         재배 시 균형시비를 한다.">


						방제방법</button>
				


			</blockquote>

		</figure>
		<div class="row row-cols-2">

			<%-- <c:set var="path" value="resources/results/" />
			<c:forEach var="i" items="${deepList }">

				<c:set var="number" value="${j.count }" />
				<c:set var="nextRow" value="${number % 3}" />
				<c:choose>
					<c:when test="${nextRow eq 1}">
						<tr>
							<td><a href="#"> <img
									class="rounded float-start d-block w-100"
									src="${path}${i.deep_folder}/${i.deep_name}"></a></td>
					</c:when>
					<c:otherwise>
						<td><a href="#"> <img
									class="rounded float-start d-block w-100"
									src="${path}${i.deep_folder}/${i.deep_name}"></a></td>

					</c:otherwise>
				</c:choose>
 --%>
			<!-- http://f2.project-jupyter.ddns.net  -->
			<c:set var="path"
				value="http://f2.project-jupyter.ddns.net:8872/getImage/" />

			<c:forEach var="i" items="${deeplist }" varStatus="j">
				<div class="col">

					<button type="button" class="btn btn-link" data-bs-toggle="modal"
						data-bs-target="#exampleModal${j.count }">
						<img class="rounded float-start d-block w-100"
							src="http://f2.project-jupyter.ddns.net:8872/getImage/${i.deep_folder}/${i.deep_name}" />
					</button>

					<div class="modal fade" id="exampleModal${j.count }" tabindex="-1"
						aria-labelledby="exampleModalLabel${j.count }" aria-hidden="true">
						<div class="modal-dialog modal-fullscreen">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel${j.count }">${i.deep_name}
									</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<img id="img" class="rounded float-start d-block w-100"
										src="http://f2.project-jupyter.ddns.net:8872/getImage/${i.deep_folder}/${i.deep_name}">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>



			<!-- <tr>
				<td><a href="#"><img
						class="rounded float-start d-block w-100" src="pest01.jpg"></a></td>
				<td><a href="#"><img
						class="rounded mx-auto d-block d-block w-100" src="pest02.jpg"></a></td>
				<td><a href="#"><img
						class="rounded float-end d-block w-100" src="pest03.jpg"></a></td>
			</tr> -->


		</div>
		<hr>

		<figure class="text-start">
			<blockquote class="blockquote">
				<!--  <span class="badge bg-primary">쾌적</span><span> : 농작물의 상태가 굉장히
					좋습니다.</span> <br> -->
				<!--		<span class="badge bg-success">안정</span><span>
					: 농작물의 상태가 안정적입니다.</span> <br> -->
				<span class="badge bg-warning">경고</span><span> : 농작물에게 예비방제를
					요합니다.</span> <br>
				<!--		<span class="badge bg-danger">위험</span><span>
					: 농작물에게 지금 당장 방제해야 합니다.</span>-->


			</blockquote>

		</figure>
		<br>
		<figure class="text-center">
			<blockquote class="blockquote">
				<span>방제를 신청하시겠습니까? &ensp;</span> <a href="Prevention.do"><button
						class="btn btn-outline-success">예</button></a> <a href="Main.do"><button
						class="btn btn-outline-success">아니오</button></a>
			</blockquote>
		</figure>
	</div>
</body>