<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<style>
	button {
		width : 100px;
		height : 35px;
		border : 0px;
		color:white;
		background:#282A35;
		margin : 5px;
	}
	</style>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user" action="register.do" method="post">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName" name="USERNAME"
                                            placeholder="성명 / Full Name" required>
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                  	  <input type="email" class="form-control form-control-user" id="exampleInputEmail" name="EMAIL" 
                                        placeholder="이메일 / Email" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="exampleID" name="USER_ID" 
                                        placeholder="닉네임 / User Name" required>
								</div>
								<div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="examplebirthday" name="PHONENUM" 
                                        placeholder="전화번호 / Phone" required>
								</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" name="USER_PASSWORD" placeholder="비밀번호 / Password" required onkeyup="checkPasswordMatch();">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword2" name="pass2" placeholder="비밀번호 확인 / Confirm Password " required onkeyup="checkPasswordMatch();">
                                    </div>                               
                                </div>
                                 <div class="col-sm-12">
      								  <div id="passwordMatchMessage"></div>
      								  <hr>
 								    </div>
                                <div class="form-group row">			
								<div class="col-sm-2-An mb-3 mb-sm-0">
									<input type="text" class="form-control form-control-user postcodify_postcode5" name="USER_ZIP" 
										placeholder="Zip" required>
								</div>
								<div class="col-sm-8 mb-3 mb-sm-0">
									<input type="text"  class="form-control form-control-user postcodify_address" name="USER_STREET" 
										placeholder="도로명 주소 / Street" required>
								</div>
								<button type="button" class="btn btn-primary btn-user-An-search btn-block" id="postcodify_search_button">검색</button>
                                </div>
                                <button type="submit" class="btn btn-primary btn-user-An-Register-Account btn-block" onclick="/admin/register.do">Register Account</button>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="login.jsp">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    
    	<!-- 주소 API 스크립트 -->
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	
	<script>
        function checkPasswordMatch() {
            var password = document.getElementById("exampleInputPassword").value;
            var repeatPassword = document.getElementById("exampleRepeatPassword2").value;
            var message = document.getElementById("passwordMatchMessage");

            if (password === repeatPassword) {
                message.innerHTML = "비밀번호가 일치합니다.";
                message.style.color = "green";
            } else {
                message.innerHTML = "비밀번호가 일치하지 않습니다.";
                message.style.color = "red";
            }
        }
    </script>

</body>
</html>