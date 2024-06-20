<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- <link rel="stylesheet" href="../resources/css/styles.css"> -->

<title>회원정보 변경 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	margin-top: 20px;
	background: /* #f7f7ff; */ #2c3e50;
	
}

.main-body {
	padding: 15px;
}

.card {
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid transparent;
	border-radius: .25rem;
	/* margin-bottom: 1.5rem; */
	/* box-shadow: 0 2px 6px 0 rgb(218 218 253/ 65%), 0 2px 6px 0
		rgb(206 206 238/ 54%); */
}

.me-2 {
	margin-right: .5rem !important;
}
</style>
<script type="text/javascript">
	function validateForm(form) {
		if (form.name.value == "") {
			alert("작성자를 입력하세요.");
			form.name.focus();
			return false;
		}
		if (form.title.value == "") {
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		}
		if (form.content.value == "") {
			alert("내용을 입력하세요.");
			form.content.focus();
			return false;
		}
	}
</script>
</head>
<body>

	<!---------------------------------------- 전체 컨테이너 ---------------------------------------->

	<div class="container">
		<div class="main-body">

	<!---------------------------------------- 헤드 네비게이터 ---------------------------------------->

			<nav aria-label="breadcrumb" class="main-breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
					<li class="breadcrumb-item"><a href="./myPage.jsp">User Profile</a></li>
					<li class="breadcrumb-item active" aria-current="page">Edit Profile</li>
				</ol>
			</nav>

	<!---------------------------------------- 헤드 네비게이터 끝 ---------------------------------------->

			<!-- <div class="row">
				<div class="col-lg-4"> -->

			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="../resources/assets/img/user/seungho.jpg" alt="Admin"
									class="rounded-circle" width="150" height="217">
								<div class="mt-3">
									<h4>문승호</h4>
									<p class="text-secondary mb-1">Full Stack Developer</p>
									<p class="text-muted font-size-sm">그린컴퓨터</p>
									<button class="btn btn-info">프로필사진변경</button>
									<!-- <button class="btn btn-outline-primary">Message</button> 메시지 버튼 사용은 보류. -->
								</div>
							</div>

						</div>
					</div>
				</div>

				<!---------------------------------------- 회원 정보 칸 시작 ---------------------------------------->

				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">이름</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<!-- <input type="text" class="form-control" value="user_name"> -->
									<input type="text" class="form-control" name="name"
										value="${ dto.name }" />
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="user_email">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">생년월일</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="user_birthdate">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Mobile</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="user_phone">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Address</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="user_address">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									<!-- <input type="button" class="btn btn-primary px-4" value="Save Changes"> -->
									<input type="submit" class="btn btn-info px-4" value="Save Changes" 
									onclick="location.href='<%= request.getContextPath() %>/userPage/profileEdit.do';">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									<!-- <input type="button" class="btn btn-primary px-4" value="Save Changes"> -->
									<input type="submit" class="btn btn-info px-4"
										value="비밀번호 변경">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
	
</script>
</body>
</html>