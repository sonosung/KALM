<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="seoulmate.membership.MemberDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>메인페이지</title>

<link rel="icon" type="image/x-icon" href="./resources/assets/img/user/seungho.jpg" />

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

<link href="./resources/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">

	<!--------------------------------------------------------- Navigation --------------------------------------------------------->
	   <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
      <div class="container">
         <a class="navbar-brand" href="#page-top">SEOULMATE</a>
         
         <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
            type="button" 
            data-bs-toggle="collapse"
            data-bs-target="#navbarResponsive" 
            aria-controls="navbarResponsive"
            aria-expanded="false" 
            aria-label="Toggle navigation">
            Menu 
            <i class="fas fa-bars">
            </i>
         </button>
         
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
               <li class="nav-item mx-0 mx-lg-1">
               <a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">추천행사</a>
               </li>
               
               <li class="nav-item mx-0 mx-lg-1">
               <a class="nav-link py-3 px-0 px-lg-3 rounded" href="#festival">게시판</a>
               </li>
               
               <li class="nav-item mx-0 mx-lg-1">
               <a class="nav-link py-3 px-0 px-lg-3 rounded" href="#calendar">행사달력</a>
               </li>
               
               <li class="nav-item mx-0 mx-lg-1">
               <a class="nav-link py-3 px-0 px-lg-3 rounded" href="./userPage/contact.jsp">Contact</a>
               </li>   
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded"
					href="./admin/login.jsp">Login</a></li>
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded"
					href="./admin/register.jsp">SignIn</a></li>
				<li class="nav-item mx-0 mx-lg-1">
    				<a class="nav-link py-3 px-0 px-lg-3 rounded" href="admin/logout.jsp">Logout</a>
				</li>
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded"
					href="./userPage/myPage.jsp">MyPage</a></li>
					   <%
						   MemberDTO user = (MemberDTO) session.getAttribute("user");
  						  if (user != null) {
    					    out.println("안녕하세요, " + user.getUSER_NUM() +"번 " + user.getUSER_ID()  +  "님!");
 						   }
 						%>
            </ul>
         </div>
      </div>
   </nav>

	<!--------------------------------------------------------- 헤드 영역 --------------------------------------------------------->

	<header class="masthead bg-primary text-white text-center">

		<!--------------------------------------------------------- 메인 상단 대표행사 위치 --------------------------------------------------------->

		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="./resources/img/Logo.png"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">SEOULMATE</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading text-uppercase mb-0">너와 나의
				SEOULMATE!</p>
		</div>
	</header>

	<!------------------------------------------------ 중앙 이미지 섹션 ---------------------------------------------------------->

	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">추천 행사정보</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>

			</div>

			<div class="container y mandatory-scroll-snapping" dir="ltr">
				<div class="row justify-content-center">

					<div class="col-md-6 col-lg-4 mb-5">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal1">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div
									class="portfolio-item-caption-content text-center text-white">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>


							<img class="img-fluid"
								src="./resources/assets/img/portfolio/cabin.png" alt="..." />
						</div>
					</div>

					<!--------------------------------------------------------- 메인 중앙 두번째 이미지 --------------------------------------------------------->

					<div class="col-md-6 col-lg-4 mb-5">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal2">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div
									class="portfolio-item-caption-content text-center text-white">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid"
								src="./resources/assets/img/portfolio/cake.png" alt="..." />
						</div>
					</div>

					<!--------------------------------------------------------- 메인 중앙 세번째 이미지 --------------------------------------------------------->

					<div class="col-md-6 col-lg-4 mb-5">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal3">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div
									class="portfolio-item-caption-content text-center text-white">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid"
								src="./resources/assets/img/portfolio/circus.png" alt="..." />
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">행사 게시판</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
               <div class="divider-custom-line"></div>
            </div>
         <div class="row">
            <a class="btn btn-xl btn-outline-light" href="./boards/festivalList.jsp">
               <i class="fas fa-download me-2"></i> 관리자 생성 행사 게시판</a>
            
            <hr>
            
            <a class="btn btn-xl btn-outline-light" href="./list.do">
               <i class="fas fa-download me-2"></i> 회원 공유 행사 게시판</a>
         </div>
      </div>
   </section>
	<jsp:include page="calIndex.jsp"></jsp:include>
	  <jsp:include page="./MainLayoutElements/footer.jsp"></jsp:include>
 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./resources/js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
