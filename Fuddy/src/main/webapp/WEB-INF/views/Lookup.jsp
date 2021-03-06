<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - LOOKUP</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<style>
* {
	font-family: "NanumSquareRound";
}

input {
	width: 100px;
}

.date {
	width: 150px;
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
		<h3 style="text-align: center">방제내역관리</h3>
		<hr />
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active btn btn-outline-success"
					id="pills-home-tab" data-bs-toggle="pill"
					data-bs-target="#pills-home" type="button" role="tab"
					aria-controls="pills-home" aria-selected="true">기본정보</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link btn btn-outline-success"
					id="pills-profile-tab" data-bs-toggle="pill"
					data-bs-target="#pills-profile" type="button" role="tab"
					aria-controls="pills-profile" aria-selected="false">내역수정</button>
			</li>
		</ul>

		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home"
				role="tabpanel" aria-labelledby="pills-home-tab">
				<!-- 기본정보 -->

				<c:forEach var="i" items="${lookup}">
					<table class="table" style="text-align: center">

						<tr>
							<td class="table-active">담당자</td>
							<td>${i.admin_id }</td>
							<td class="table-active">신청자</td>
							<td>${i.u_id }</td>
						</tr>
						<tr>
							<td class="table-active">작물정보</td>
							<%-- <td>${i.pv_crop }</td> --%>
							<td>토마토</td>
							<td class="table-active">병해충</td>
							<td>${i.pv_disease }</td>
						</tr>
						<tr>
							<!-- map API -->
							<td colspan="4">map API</td>
						</tr>
						<tr>
							<td class="table-active">위치</td>
							<td>${i.pv_addr }</td>
							<td class="table-active">방제면적</td>
							<td>${i.pv_area }</td>
						</tr>
						<tr>
							<td class="table-active">방제약</td>
							<td>${i.pv_drug }</td>
							<td class="table-active">신청일</td>
							<td>${i.pv_date }</td>
						</tr>
						<tr></tr>
						<tr>
							<td class="table-active">방제날짜</td>
							<td colspan="3"><span>${i.pv_st_dt } ~</span> <span>${i.pv_ed_dt }</span>
							</td>
						</tr>
						<tr>
							<td class="table-active">특이사항</td>
							<td colspan="3">${i.pv_note }<!--특이사항 넣는 곳-->
							</td>
						</tr>
					</table>
				</c:forEach>
				<form action="" style="text-align: center">
					<button class="btn btn-outline-success">담당자 확인</button>
				</form>
			</div>
			<div class="tab-pane fade" id="pills-profile" role="tabpanel"
				aria-labelledby="pills-profile-tab">

				<!-- 내역수정 -->

				<form action="#" style="text-align: center">
					<table class="table" style="text-align: center">
						<c:forEach var="j" items="${lookup}">
							<tr>
								<td class="table-active">담당자</td>
								<td><input type="text" name="admin_id" value=${j.admin_id } /></td>
								<td class="table-active">신청자</td>
								<td><input type="text" name="u_id" value="${j.u_id }" /></td>
							</tr>
							<tr>
								<td class="table-active">작물정보</td>
								<td><input type="text" name="pv_crop" value="${j.pv_crop }" /></td>
								<td class="table-active">병해충</td>
								<td><input type="text" name="pv_disease"
									value="${j.pv_disease }" /></td>
							</tr>
							<tr>
								<!-- map API -->
								<td colspan="4">map API</td>
							</tr>
							<tr>
								<td class="table-active">위치</td>
								<td><input type="text" name="pv_addr" value="${j.pv_addr }" /></td>
								<td class="table-active">방제면적</td>
								<td><input type="text" name="pv_area" value="${j.pv_area }" /></td>
							</tr>
							<tr>
								<td class="table-active">방제약</td>
								<td><input type="text" name="pv_drug" value="${j.pv_drug }" /></td>
								<td class="table-active">신청일</td>
								<td><input type="date" name="pv_date" class="date"
									value="${j.pv_date }" /></td>
							</tr>
							<tr>
								<td class="table-active">방제날짜</td>
								<td colspan="3"><span> <input type="date"
										name="pv_st_dt" class="date" value="${j.pv_st_dt }" /></span> ~ <span>
										<input type="date" name="pv_ed_dt" class="date"
										value="${j.pv_ed_dt }" />
								</span></td>
							</tr>
							<tr>
								<td class="table-active">특이사항</td>
								<td colspan="3"><textarea name="pv_ed_dt"
										style="width: 100%">${j.pv_ed_dt }</textarea></td>
							</tr>
						</c:forEach>
					</table>

					<button class="btn btn-outline-success">수정</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
