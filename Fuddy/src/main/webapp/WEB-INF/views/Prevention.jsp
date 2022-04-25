<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - PREVENTION</title>
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
		<div style="text-align: center">
			<h3>방제 신청서</h3>
		</div>
		<hr />
		<form action="PreventionInsert.do">
			<table class="table" style="text-align: center;">
				<tbody>
					<tr>

						<td class="table-active"><label for="id_f"
							class="form-label ">아이디</label></td>
						<td>
							<div>
								<input type="text" readonly class="form-control" name="u_id"
									id="u_id" value="${info.u_id }" />
							</div>
						</td>
					</tr>
					<tr>

						<td class="table-active"><label for="id_f"
							class="form-label ">작성자</label></td>
						<td>
							<div>
								<input type="text" readonly class="form-control" name="u_name"
									id="u_name" value="${info.u_name }" />
							</div>
						</td>
					</tr>

					<tr>
						<td class="table-active">지번</td>
						<td><input type="text" class="form-control" name="pv_addr"
							id="pv_addr" /></td>
					</tr>
					<tr>
						<td class="table-active">방제 면적</td>
						<td><input type="text" class="form-control" name="pv_area"
							id="pv_area"  onkeyup="go(this.value)" /></td>
					</tr>

					<tr>
						<td class="table-active">작물명</td>
						<td><input type="text" class="form-control" name="pv_crop"
							value="토마토" id="pv_crop" style="width: 200px;" readonly /></td>
					</tr>

					<tr>
						<td class="table-active">작물 병명</td>
						<td><input type="text" class="form-control" name="pv_disease"
							value="잎마름병" id="pv_disease" style="width: 200px;" readonly /></td>
					</tr>

					<tr>
						<td class="table-active">방제약</td>
						<td><input type="text" class="form-control" name="pv_drug"
							value="가지란" id="pv_drug" style="width: 200px;" readonly /></td>
					</tr>

					<tr>
						<td class="table-active">신청날짜</td>
						<td><input type="text" readonly class="form-control"
							name="pv_date" id="pv_date" value="" style="width: 200px;" /></td>
					</tr>
					<tr>
						<td class="table-active"><label for="title"
							class="form-label">방제 예약일</label></td>
						<td>
							<table>
								<tr>
									<td class="table-active">시작 &nbsp;&nbsp;</td>
									<td><input type="date" class="form-control"
										name="pv_st_dt" id="pv_st_dt" style="width: 200px;" /></td>
								</tr>
								<tr>
									<td class="table-active">종료&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input type="date" class="form-control"
										name="pv_ed_dt" id="pv_ed_dt" style="width: 200px;" /></td>
								</tr>
								<tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="table-active">방제 가격</td>
						<td><input type="text" readonly class="form-control"
							name="pv_price" id="pv_price" value="" style="width: 200px;" /></td>
					</tr>
					<tr>
						<td class="table-active"><label for="exampleInputPassword1"
							class="form-label">특이사항</label></td>
						<td><div>

								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" name="pv_note"></textarea>
							</div></td>
					</tr>
				</tbody>
			</table>
			<input type="hidden" name="admin_id" value="${adminVO.admin_id }">
			<input type="hidden" name="p_num" value="${p_num }">
			<div style="text-align: center">
				<button type="submit" class="btn btn-outline-success">방제신청
				</button>
			</div>
		</form>

	</div>
	<script>
		date = new Date();
		year = date.getFullYear();
		month = date.getMonth() + 1;
		day = date.getDate();
		document.getElementById("pv_date").setAttribute('value',
				year + "-" + month + "-" + day);

		function go(val) {
			var area = document.getElementById("pv_area").value;
			var price = (area * 40) + '원';
			document.getElementById("pv_price").value = price;
		}
	</script>
</body>
</html>
