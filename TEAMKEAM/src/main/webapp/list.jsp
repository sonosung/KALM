<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>게시글 목록 페이지</title>
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

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fdf17bc322ecfe3f9b4123bfebc8ae80"></script>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Seoul Mate</a>
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
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Portfolio</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Masthead-->
	<header class="masthead bg-black text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<h1 class="masthead-heading text-uppercase mb-0">SEOULMATE</h1>
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<p class="masthead-subheading font-weight-light mb-0">Board -
				View</p>
		</div>
	</header>

	<!-- 게시판 목록 -->
	<section class="page-section">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0">축제 공유
				게시글 리스트</h2>
			<!-- 검색 폼 -->
			<form method="get">
				<table class="table table-bordered" width="90%" align="center">
					<tr>
						<td align="center"><select name="searchField">
								<option value="title">제목</option>
								<option value="content">내용</option>
						</select> <input type="text" name="searchWord" /> <input type="submit"
							value="검색하기" /></td>
					</tr>
				</table>
			</form>
			<!-- 목록 테이블 -->
			<table class="table table-bordered" width="90%" align="center">
				<thead>
					<tr>
						<th width="10%">번호</th>
						<th width="*">제목</th>
						<th width="15%">작성자</th>
						<th width="10%">조회수</th>
						<th width="10%">추천수</th>
						<th width="15%">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${ empty boardLists }">
							<!-- 게시물이 없을 때 -->
							<tr>
								<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<!-- 게시물이 있을 때 -->
							<c:forEach items="${ boardLists }" var="row" varStatus="loop">
								<tr align="center">
									<td>${ map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index) }</td>
									<td align="left"><img src="3.jpg"
										alt="Thumbnail"
										style="width: 50px; height: 50px; margin-right: 10px;" /> <a
										href="../mvcboard/view.do?idx=${ row.idx }">${ row.title }제목입니다.</a>
									</td>
									<td>${ row.name }작성자</td>
									<td>${ row.visitcount }100</td>
									<td>${ row.likecount }100</td>
									<td>${ row.postdate }2024.00.00</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<!-- 하단 메뉴(바로가기, 글쓰기) -->
			<div class="d-flex justify-content-between">
				<div>${ map.pagingImg }</div>
				<button type="button" class="btn btn-secondary"	onclick="location.href='write.jsp';">글쓰기</button>
			</div>
		</div>
	</section>

	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Freelancer</h4>
					<p class="lead mb-0">
						Freelance is a free to use, MIT licensed Bootstrap theme created
						by <a href="http://startbootstrap.com">Start Bootstrap</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2023</small>
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

				<!-- Portfolio Modal 5-->

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
