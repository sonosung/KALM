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
<title>Freelancer - Start Bootstrap Theme</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./resources/css/styles.css" rel="stylesheet" />

<!------------------------------------------------- 달력 Required meta tags ------------------------------------------------->
<!--  -->
<!--     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="./calendar/fonts/icomoon/style.css">

<link href='./calendar/fullcalendar/packages/core/main.css'
	rel='stylesheet' />
<link href='./calendar/fullcalendar/packages/daygrid/main.css'
	rel='stylesheet' />


<!-- Bootstrap CSS -->
<!-- <link rel="stylesheet" href="./calendar/css/bootstrap.min.css"> -->

<!-- Style -->
<link rel="stylesheet" href="./calendar/css/style.css">

<title>Calendar #9</title>

<!------------------------------------------------- 달력 메타 태그 --------------------------------------------------->

<script>
        	function Login(){
        		  window.open('./admin/login.jsp', 'Login', 'left=500,top=50,width=600,height=700');
        	}
        	
        	function Member(){
      		  	window.open('./admin/register.jsp', 'register', 'left=500,top=50,width=900,height=1000');
      		}
        </script>

</head>
<body id="page-top">

	<!--------------------------------------------------------- Navigation --------------------------------------------------------->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">SEOULMATE</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">행사정보</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">행사
							게시판</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#calendar">행사달력</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded"
						href="./userPage/contact.jsp">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded"
						href="./admin/login.jsp">Login</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded"
						href="./admin/register.jsp">Member</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded"
						href="./06Session/04_Logout.jsp">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded"
						href="./userPage/myPage.jsp">MyPage</a></li>
					    <%
						    MemberDTO user = (MemberDTO) session.getAttribute("user");
  								  if (user != null) {
    								    out.println("안녕하세요, " + user.getUSER_ID() + "님!");
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
			<p class="masthead-subheading font-weight-light mb-0">너와 나의
				SEOULMATE!</p>
		</div>

		<!--------------------------------------------------------- 메인 상단 대표행사 위치 --------------------------------------------------------->

	</header>

	<!------------------------------------------------ 중앙 이미지 섹션 ---------------------------------------------------------->

	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">행사정보</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>

			</div>
			<!--------------------------------------------------------- 행사 섹션 --------------------------------------------------------->

			<div class="container y mandatory-scroll-snapping" dir="ltr">
				<div class="row justify-content-center">



					<!--------------------------------------------------------- 메인 중앙 첫번째 이미지 --------------------------------------------------------->

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

	<!--------------------------------------------------------- 중앙이미지 세션 끝 ------------------------------------------------------------------>

	<!--------------------------------------------------------- 아래는 행사정보만 볼수있는 리스트 섹션으로 만들지 고민중 ------------------------------------------------------------------>

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
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">행사 목록들만 한눈에 볼 수 있는</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">행사 목록 이동 페이지로 만들어 볼까?</p>
				</div>
			</div>
			<!-- About Section Button-->
			<!-- <div class="text-center mt-4"> -->
			<div class="row">
				<a class="btn btn-xl btn-outline-light" href="./festivalList.jsp">
					<i class="fas fa-download me-2"></i> 관리자 생성 게시판
				</a>
				<hr>
				<a class="btn btn-xl btn-outline-light" href="./mvcboard/list.do">
					<i class="fas fa-download me-2"></i> 유저 후기 게시판
				</a>
				<hr>
				<a class="btn btn-xl btn-outline-light" href="./list.do"> <i
					class="fas fa-download me-2"></i> 이진규 작업용 임시 게시판
				</a>

			</div>
		</div>
	</section>

	<!---------------------------------------------------- 행사 달력  ------------------------------------------------>

	<%-- <%@ include file="/adminIndex.jsp" %> --%>
	<jsp:include page="/calendar/index.jsp"></jsp:include>

	<!--------------------------------------------------------- 행사정보 공유 섹션 --------------------------------------------------------->

	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">who made it?</h4>
					<br>
					<p class="lead mb-0">
						문승호, 김별, 이진규, 안상환 <br /> <br /> Started from 2024.06.12<br>to
						2024.07.11
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">visit our github</h4>
					<br> <a class="btn btn-outline-light btn-social mx-1"
						href="https://github.com/byeol1286"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1"
						href="https://github.com/GOTERCODE"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1"
						href="https://github.com/poong1125"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1"
						href="https://github.com/sonosung"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text--->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Us</h4>
					<p class="lead mb-0">
						SEUOLMATE는<br>JSP & OracleDB 기반 팀 프로젝트입니다.<br>
						<br> MIT licensed Bootstrap theme<br>created by <a
							href="http://startbootstrap.com">Start Bootstrap</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Team_KEAM</small>
		</div>
	</div>
	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<!-- 첫번째 이미지 팝업 -->
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">1번
									행사</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="./resources/assets/img/portfolio/cabin.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
									행사명 : <br> 행사기간 : <br> 위치 :
								</p>
								<button class="btn btn-primary" data-bs-dismiss="modal">
									<i class="fas fa-xmark fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<!-- 두번째 이미지 팝업 -->
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">2번
									행사</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="./resources/assets/img/portfolio/cake.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
									행사명 : <br> 행사기간 : <br> 위치 :
								</p>
								<button class="btn btn-primary" data-bs-dismiss="modal">
									<i class="fas fa-xmark fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<!-- 세번째 이미지 팝업 -->
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">3번
									행사</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="./resources/assets/img/portfolio/circus.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
									행사명 : <br> 행사기간 : <br> 위치 :
								</p>
								<button class="btn btn-primary" data-bs-dismiss="modal">
									<i class="fas fa-xmark fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 4-->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" aria-labelledby="portfolioModal4" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<!-- 네번째 이미지 팝업 -->
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">4번
									행사</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="./resources/assets/img/portfolio/game.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
									행사명 : <br> 행사기간 : <br> 위치 :
								</p>
								<button class="btn btn-primary" data-bs-dismiss="modal">
									<i class="fas fa-xmark fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- End Footer -->

	<!-- Portfolio Modal 5-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<!-- 다섯번째 이미지 팝업 -->
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">5번
									행사</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="./resources/assets/img/portfolio/safe.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
									행사명 : <br> 행사기간 : <br> 위치 :
								</p>
								<button class="btn btn-primary" data-bs-dismiss="modal">
									<i class="fas fa-xmark fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 6-->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<!-- 여섯번째 이미지 팝업 -->
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">6번
									행사</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="./resources/assets/img/portfolio/submarine.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
									행사명 : <br> 행사기간 : <br> 위치 :
								</p>
								<button class="btn btn-primary" data-bs-dismiss="modal">
									<i class="fas fa-xmark fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>
</html>
