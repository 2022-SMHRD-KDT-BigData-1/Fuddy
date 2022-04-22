<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FUDDY - MAIN</title>
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
										<li><a class="dropdown-item" href="">제원 관리</a></li>
										<li><a class="dropdown-item" href="#">회원 관리</a></li>
									</ul></li>
								<!-- 회원관리화면으로 주소 바꾸세요 -->

								<li class="nav-item"><a class="nav-link"
									aria-current="page" href="d_Table2.do?pageNum=1">문의게시판</a></li>
								<!-- 문의게시판으로 주소 바꾸세요 -->
								

								<!-- 드롭다운 복붙해서 쓰면 됨 -->
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-bs-toggle="dropdown" aria-expanded="false">
										방제신청내역 </a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" href="Spec_Drone.do">기본 정보</a></li>
										<li><a class="dropdown-item" href="Spec_Drug.do">내역 수정</a></li>
										<li><a class="dropdown-item" href="Spec_Drug.do">사진</a></li>
									</ul></li>
								<!-- 드롭다운 여기까지 -->

								<!-- 드롭다운 복붙해서 쓰면 됨 -->

								<!-- 드롭다운 여기까지 -->


								<!-- 드롭다운 복붙해서 쓰면 됨 -->
							<!--  	<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Dropdown </a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" href="#">Action</a></li>
										<li><a class="dropdown-item" href="#">Another action</a></li>
									</ul></li>-->
								<!-- 드롭다운 여기까지 -->
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>

	</nav>
	<!-- 네비바 끝 -->

	<!--캐러셀 시작-->
	
	    <!--캐러셀 시작-->
	    <div class="container mt-3">
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="10000">
          <img src="resources/image/img01_logo.jpg" class="d-block w-100" alt="">
          <div class="carousel-caption d-none d-md-block">
            <h1>더 쉽고 더 편리한</h1>
            <h1>미래 농업을 연구합니다.</h1>
            <p>한국 농업의 대표, FUDDY.</p>
            
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="resources/image/img02_logo.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h1>언제나 농업인과 함께 하겠습니다.</h1>
            <p>지속 가능한 농업에 이바지하는 FUDDY.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="resources/image/img03_logo.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h1>최고의 기술력, 서비스 네트워크로</h1>
            <h1>차별화된 솔루션을 제공합니다.</h1>
            <p>고도의 AI분석으로 농민들에게 제공하는 FUDDY.</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!--캐러셀 끝-->
    
        <div class="container text-center">
        <div class="row">
            <hr>
            <div class="col-sm-12">
            
                <h1>Farm Useful Drone Direct</h1>
            </div>
           <hr>
        </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <h3 style="text-align: center">실시간 모델</h3>
          <p style="text-align: center">사용자가 보내는 사진에서 병해충을 실시간으로 판단해줍니다. </p>
 
        </div>
        <div class="col-sm-4">
          <h3 style="text-align: center">병해충</h3>
          <p style="text-align: center">다양한 병해충에 대한 솔루션을 제공합니다.</p>

        </div>
        <div class="col-sm-4">
          <h3 style="text-align: center">드론 방제 신청</h3>
          <p style="text-align: center">스케줄을 지정하여 언제든지 신청합니다.</p>

        </div>
      </div>
    </div>
    </div>
	
	
 

</body>
</html>
