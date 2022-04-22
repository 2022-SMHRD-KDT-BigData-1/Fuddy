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
		<h3 style="text-align: center">나의 방제내역관리</h3>
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
			<li class="nav-item" role="presentation">
				<button class="nav-link btn btn-outline-success"
					id="pills-contact-tab" data-bs-toggle="pill"
					data-bs-target="#pills-contact" type="button" role="tab"
					aria-controls="pills-contact" aria-selected="false">사진확인</button>
			</li>
		</ul>

		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home"
				role="tabpanel" aria-labelledby="pills-home-tab">
				<!-- 기본정보 -->
				<table class="table" style="text-align: center">
					<c:forEach var="i" items="${lookup}">
						<tr>
							<td class="table-active">담당자</td>
							<td>${i.admin_id }</td>
							<td class="table-active">신청자</td>
							<td>${i.u_id }</td>
						</tr>
						<tr>
							<td class="table-active">작물정보</td>
							<td>${i.pv_crop }</td>
							<td class="table-active">병해충</td>
							<td>${i.pv_disease }</td>
						</tr>
						<tr>
							<!-- map API -->
							<td colspan="4">
								<div id="map1" class="map" style="width: 100%; height: 350px"></div>
							</td>
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
							<td colspan="3">
								<!--특이사항 넣는 곳--> ${i.pv_note }
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="tab-pane fade" id="pills-profile" role="tabpanel"
				aria-labelledby="pills-profile-tab">
				<!-- 내역수정 -->
				<form action="#" style="text-align: center">
					<table class="table" style="text-align: center">
						<c:forEach var="j" items="${lookup}">
							<tr>
								<td class="table-active">담당자</td>
								<td><input type="text" name="name_d"
									value="${j.admin_id } " /></td>
								<td class="table-active">신청자</td>
								<td><input type="text" name="name_f" value="${j.u_id }" /></td>
							</tr>
							<tr>
								<td class="table-active">작물정보</td>
								<td><input type="text" name="crop" value="${j.pv_crop }" /></td>
								<td class="table-active">병해충</td>
								<td><input type="text" name="disease"
									value="${j.pv_disease }" /></td>
							</tr>

							<tr>
								<td class="table-active">위치</td>
								<td><input type="text" name="jibun" value="${j.pv_addr }" /></td>
								<td class="table-active">방제면적</td>
								<td><input type="text" name="area" value="${j.pv_area }" /></td>
							</tr>
							<tr>
								<td class="table-active">방제약</td>
								<td><input type="text" name="medicine"
									value="${j.pv_drug }" /></td>
								<td class="table-active">신청일</td>
								<td><input type="date" name="apply" class="date"
									value="${j.pv_date }" /></td>
							</tr>
							<tr>
								<td class="table-active">방제날짜</td>
								<td colspan="3"><span> <input type="date"
										name="start_d" class="date" value="${j.pv_st_dt }" /></span> ~ <span>
										<input type="date" name="end_d" class="date"
										value="${j.pv_ed_dt }" />
								</span></td>
							</tr>
							<tr>
								<td class="table-active">특이사항</td>
								<td colspan="3"><textarea style="width: 100%">${i.pv_note }</textarea></td>
							</tr>
						</c:forEach>
					</table>
					<button class="btn btn-outline-success">수정</button>
				</form>
			</div>
			<div class="tab-pane fade" id="pills-contact" role="tabpanel"
				aria-labelledby="pills-contact-tab">
				<table class="table table-bordered">
					<tr>
						<td>
							<button type="button" class="btn btn-link" data-bs-toggle="modal"
								data-bs-target="#exampleModal">
								<img class="rounded float-start d-block w-100" src="pest01.jpg">
							</button>
						</td>
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-fullscreen">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">leaf02.jpg</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<img id="img" class="rounded float-start d-block w-100"
											src="pest01.jpg">
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">닫기</button>

									</div>
								</div>
							</div>
						</div>
					
						<c:set var="path" value="resources/files/" />
						<c:forEach var="img" items="${img_list }" varStatus="j">
							<c:set var="date" value="${img.p_date }" />
							<c:set var="folder" value="${img.p_folder }" />

							<td><a href="#"><img
									class="rounded mx-auto  d-block w-100"
									src="${path}${img.p_folder}/${img.p_name}"></a></td>
							<!-- <td><a href="#"><img
									class="rounded float-end d-block w-100"
									src="resources/image/pest03.jpg"></a></td> -->
						</c:forEach>
					</tr>

					<!--<tr>
						<td><a href="#"><img
								class="rounded float-start d-block w-100"
								src="resources/image/pest01.jpg"></a></td>
						<td><a href="#"><img
								class="rounded mx-auto d-block d-block w-100"
								src="resources/image/pest02.jpg"></a></td>
						<td><a href="#"><img
								class="rounded float-end d-block w-100"
								src="resources/image/pest03.jpg"></a></td>
					</tr>-->

				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7f35f963d64bccbe492dd16e66e06ec&libraries=services"></script>


	<script>
		// 기본정보 지도
		// var mapContainer = document.getElementsByClassName("map");
		var mapContainer = document.getElementById("map1"); // 지도를 표시할 div
		var mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 1, // 지도의 확대 레벨
		};

		// 지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		var address = "광주광역시 북구 문흥동 969-9";
		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						address,
						function(result, status) {
							// 정상적으로 검색이 완료됐으면
							if (status === kakao.maps.services.Status.OK) {
								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords,
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">'
													+ address + "</div>",
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});

		var address = "광주광역시 북구 문흥동 969-9";
		var mapContainer2 = document.getElementById("map2"); // 지도를 표시할 div
		var mapOption2 = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3, // 지도의 확대 레벨
		};
		var map2 = new kakao.maps.Map(mapContainer2, mapOption2);
		var geocoder2 = new kakao.maps.services.Geocoder();

		geocoder2
				.addressSearch(
						address,
						function(result2, status) {
							// 정상적으로 검색이 완료됐으면
							if (status === kakao.maps.services.Status.OK) {
								var coords2 = new kakao.maps.LatLng(
										result2[0].y, result2[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다

								var marker2 = new kakao.maps.Marker({
									map : map2,
									position : coords2,
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow2 = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">'
													+ address + "</div>",
										});

								infowindow2.open(map2, marker2);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map2.setCenter(coords2);
							}
						});
	</script>
</body>
</html>
