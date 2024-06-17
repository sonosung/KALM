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
<title>테스트 페이지</title>
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

		</div>
	</nav>

	<!-- Masthead-->

	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">


			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">게시글 작성</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>


			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Board Write Page</p>
		</div>
	</header>



	<div class="masthead bg-primary text-black">
		<form name="writeFrm" method="post" enctype="multipart/form-data"
			action="../mvcboard/write.do" onsubmit="return validateForm(this);">



			<table border="1" width="90%" class=bg-white align="center">


				<tr class="masthead bg-secondary text-white">
					<td colspan="2" align="center">
						<h2>게시글 작성</h2>
					</td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>




				<tr>
					<td align="center" class="bg-secondary text-white">카테고리</td>
					<td><select name="cate" class="btn btn-secondary">
							<option value="sel">=== 선택 ===</option>
							<option value="cate1">나들이</option>
							<option value="cate2">공연</option>
							<option value="cate3">먹거리</option>
							<option value="cate4">계절</option>
					</select></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>
				
				<tr>
					<td align="center" class="bg-secondary text-white">제목</td>
					<td><input type="text" name="title" style="width: 90%;" /><br></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>


				<tr>
					<td align="center" class="bg-secondary text-white">행사명</td>
					<td><input type="text" name="title" style="width: 90%;" /><br></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>



				<tr>
					<td align="center" class="bg-secondary text-white">메인 이미지</td>
					<td><input type="file" name="ofile" class="btn btn-secondary" /></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>




				<tr>

					<td align="center" class="bg-secondary text-white">행사 내용</td>
					<td><textarea name="content"
							style="width: 90%; height: 500px;"></textarea></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>




				<tr>
					<td align="center" class="bg-secondary text-white">이미지</td>
					<td><input type="file" name="ofile" class="btn btn-secondary" /></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>




				<tr>
					<td align="center" class="bg-secondary text-white">행사 주소</td>
					<td><input type="text" name="add" style="width: 42%;" /></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>

				<tr>
					<td align="center" class="bg-secondary text-white">행사 기간</td>
					<td><input type="date" name="start-date" style="width: 20%;"
						class="btn btn-secondary" /> - <input type="date" name="end-date"
						style="width: 20%;" class="btn btn-secondary" /></td>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />
				</tr>



				<tr class="masthead bg-secondary" style="">
					<td colspan="2" align="right">
						<!--  class="masthead bg-secondary" style="height 10px;"  -->
						<button type="submit" class="btn btn-secondary">작성 완료</button>
						<button type="reset" class="btn btn-secondary">RESET</button>
						<button type="button" class="btn btn-secondary"
							onclick="location.href='../mvcboard/list.do';">목록 바로가기</button>
					<td align="center" class="bg-secondary text-white"
						style="width: 10px" />


				</tr>

			</table>
		</form>
	</div>
	<!-- Portfolio Section Heading-->

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
