<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - JOIN</title>
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
	<div class="container p-3 my-3 " style="width: 380px;">
		<a href" ="main.html"> <img class="logo" style="width: 350px;"
			src="resources/image/FUDDY-logo.png" />
		</a>
	</div>
	<div class="container p-3 my-3 border" style="width: 350px">
		<!-- 회원가입 내용 -->
		<h5 style="text-align: center">드론 기사 회원가입</h5>
		<hr />
		<form action="joinInsert.do" method="post" class="was-validated">
			<!-- 회원가입 컨트롤로 이동 -->

			<div class="form-group">
				<label for="u_id">아이디 </label><input type="text"
					class="form-control" id="u_id" placeholder="ID를 입력해주세요" name="u_id"
					_mstplaceholder="22045387" required />
				<!-- div class="valid-feedback id" id="idcheck1">사용할 수 있는 아이디입니다.</div>-->
				<div class="valid-feedback id" id="idcheck1">사용할 수 있는 아이디입니다.</div>
				<div class="invalid-feedback id" id="idcheck2">사용할 수 없는
					아이디입니다.</div>
			</div>
			<br />
			<div class="form-group">
				<label for="u_id">비밀번호 </label> <input type="password"
					class="form-control" id="u_pw" placeholder="비밀번호를 입력해주세요"
					name="u_pw" required />
				<div class="valid-feedback">유효한 비밀번호입니다.</div>
				<div class="invalid-feedback">비밀번호 칸을 채워주세요.</div>
			</div>
			<br />
			<div class="form-group">
				<label for="name">이름 </label> <input type="text"
					class="form-control" id="u_name" placeholder="이름을 입력해주세요"
					name="u_name" required />
				<div class="valid-feedback name">유효한 이름입니다.</div>
				<div class="invalid-feedback name">이름 칸을 채워주세요.</div>
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
					data-format="ddd-dddd-dddd" id="u_phone" placeholder="번호을 입력해주세요"
					name="u_phone" required />
				<div class="valid-feedback">유효한 번호입니다.</div>
				<div class="invalid-feedback">번호 칸을 채워주세요.</div>
			</div>
			<br />

			<div class="form-group">
				<label for="tel">영업 거점 </label> <input type="text" class="form-control"
					data-format="ddd-dddd-dddd" id="u_addr" placeholder="주소을 입력해주세요"
					name="u_addr" required />
				<div class="valid-feedback">유효한 영업 거점 입니다.</div>
				<div class="invalid-feedback">영업 거점 칸을 채워주세요.</div>
			</div>
			<br />
			<div class="form-group">
				<label for="tel">희망 거점 </label> <input type="text"
					class="form-control" data-format="ddd-dddd-dddd" id="u_email"
					placeholder="주소을 입력해주세요" name="u_email" required />
				<div class="valid-feedback">희망 거점 입니다.</div>
				<div class="invalid-feedback">희망 거점 칸을 채워주세요.</div>
			</div>
			<div class="form-group">
				<label for="tel">자겨증 종류 </label> <input type="text"
					class="form-control" data-format="ddd-dddd-dddd" id="u_email"
					placeholder="주소을 입력해주세요" name="u_email" required />
				<div class="valid-feedback">유효한 자겨증 종류 입니다.</div>
				<div class="invalid-feedback">자겨증 종류 칸을 채워주세요.</div>
			</div>

			<div class="form-group form-check"></div>
			<div style="text-align: center">
				<button type="submit" class="btn btn-outline-success">회원가입
				</button>
			</div>
		</form>
	</div>


	<script src="resources/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$("#u_id").focusout(function() {
			var id = $("#u_id").val();
			console.log(id);
			$.ajax({
				url : "idCheck.do",
				type : "post",
				data : {
					"id" : id
				},
				dataType : "JSON",
				success : function(result) {
					if (result.u_id == undefined) {
						console.log("사용가능");
						$("#idcheck1").show();
						$("#idcheck2").hide();
					} else {
						console.log("사용불가");
						
						$("#idcheck1").hide();
						$("#idcheck2").show();
						
					}

				},
				error : function(e) {
					alert("서버요청실패 id")
				}
			})
		});
	</script>
</body>
</html>
