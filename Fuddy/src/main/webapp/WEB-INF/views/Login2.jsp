<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FUDDY</title>
    <link
      href="bootstrap.min.css"
      rel="stylesheet"
    />
    <style>
        *{
            font-family:  'NanumSquareRound';
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- 네비바 시작 -->
    <nav class="navbar navbar-expand-lg  navbar-light bg-light">
      <div class="container-fluid">
        <!-- 푸띠 로고 -->
        <div class="nav-item">
          <a class="nav-link" href="main.html">
            <img class="logo" src="FUDDY-logo.png" />
          </a>
        </div>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- 로그인 안했을 때-->
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">로그인</a>
            </li>
            <!-- 로그인 화면으로 주소 바꾸세요 -->

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">회원가입</a>
            </li>
            <!-- 회원가입 화면으로 주소 바꾸세요 -->

            <!-- 로그인 했을 때 -->
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">로그아웃</a>
            </li>
            <!-- 로그아웃 화면으로 주소 바꾸세요 -->

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">회원관리</a>
            </li>
            <!-- 회원관리화면으로 주소 바꾸세요 -->

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">문의게시판</a>
            </li>
            <!-- 문의게시판으로 주소 바꾸세요 -->

            <!-- 드롭다운 복붙해서 쓰면 됨 -->
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                제원관리
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
              </ul>
            </li>
            <!-- 드롭다운 여기까지 -->

            <!-- 드롭다운 복붙해서 쓰면 됨 -->
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                방제내역관리
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
              </ul>
            </li>
            <!-- 드롭다운 여기까지 -->

            <!-- 드롭다운 복붙해서 쓰면 됨 -->
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Dropdown
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
              </ul>
            </li>
            <!-- 드롭다운 여기까지 -->
          </ul>
        </div>
      </div>
    </nav>
    <!-- 네비바 끝 -->


    <div class="container p-3 my-3 border " style ="width: 350px;">
        <div style="text-align: center;">
          
            <input
              class="form-check-input"
              type="radio"
              name="member"
              value="0"
              id="member_f"
              checked
            />
            <label class="form-check-label" for="member_f"> <h4>회 원</h4></label>
            
            <input
              class="form-check-input"
              type="radio"
              name="member"
              value="1"
              id="member_d"
            />
            <label class="form-check-label" for="member_d"> <h4>직 원</h4></label>
        </div>


        <hr>
      <!-- 회원로그인 내용 -->
      <form action="#" class="was-validated">
          <h5 style="text-align: center;">회원로그인</h5>
          <hr>
        <!-- 회원로그인 컨트롤로 이동 -->
        <div class="form-group">
          <label for="id_f">ID : </label>
          <input
            type="text"
            class="form-control"
            id="id_f"
            placeholder="ID를 입력해주세요"
            name="id_f"
            required
          />
          <div class="valid-feedback">유효한 ID입니다.</div>
          <div class="invalid-feedback">ID 칸을 채워주세요.</div>
        </div>
        <br>
        <div class="form-group">
          <label for="pw_f">비밀번호 : </label>
          <input
            type="password"
            class="form-control"
            id="pw_f"
            placeholder="비밀번호를 입력해주세요"
            name="pw_f"
            required
          />
          <div class="valid-feedback">유효한 비밀번호입니다.</div>
          <div class="invalid-feedback">비밀번호 칸을 채워주세요.</div>
        </div>
        <div class="form-group form-check"></div>
        <div style="text-align: center">
        <button type="submit" style="text-align: center;" class="btn btn-outline-success"">로그인</button>
    </div>
    </form>

      <!-- 직원로그인 내용 -->
      <form action="#" class="was-validated">
        <h5 style="text-align: center;">직원로그인</h5>
        <hr>
        <!-- 직원로그인 컨트롤로 이동 -->
        <div class="form-group">
          <label for="id_d">ID : </label>
          <input
            type="text"
            class="form-control"
            id="id_d"
            placeholder="ID를 입력해주세요"
            name="id_d"
            required
          />
          <div class="valid-feedback">유효한 ID입니다.</div>
          <div class="invalid-feedback">ID 칸을 채워주세요.</div>
          <br>
        </div>
        <div class="form-group">
          <label for="pw_d">비밀번호 : </label>
          <input
            type="password"
            class="form-control"
            id="pw_d"
            placeholder="비밀번호를 입력해주세요"
            name="pw_d"
            required
          />
          <div class="valid-feedback">유효한 비밀번호입니다.</div>
          <div class="invalid-feedback">비밀번호 칸을 채워주세요.</div>
        </div>
        <div class="form-group form-check"></div>
        <div style="text-align: center">
        <button type="submit" class="btn btn-outline-success"">로그인</button>
    </div>
    </form>
    </div>
  </body>
</html>
