<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	.outer{
		width:60%;
		min-width : 650px;
		background: rgb(248, 249, 250);
		box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
		margin:auto;
		margin-top : 70px;
		margin-bottom : 70px;
	}
	
	#joinForm {
		width : 400px;
		margin: auto;
		padding: 10px;
	}
	
	#joinForm h1 {
		text-align:center;
	}
	

	.input_area {
	    border: solid 1px #dadada;
	    padding : 10px 10px 14px 10px;
	    background : white;
	}
	

	.input_area input:not([type=checkbox]) {
		width : 250px;
		height : 30px;
		border: 0px;
	}
	
	.btnArea {
		text-align:center;
		padding : 50px;
	}
	
	button {
		width : 100px;
		height : 35px;
		border : 0px;
		color:white;
		background:#282A35;
		margin : 5px;
	}
	
</style>
 <script>
        function checkId() {
            var userId = document.querySelector("input[name='userId']").value;

            // XMLHttpRequest 객체 생성
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "/An_Login_page/Joinmembership.do", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

            // 서버 응답 처리
            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        var response = JSON.parse(xhr.responseText);
                        console.log("서버 응답:", response);
                    } else {
                        console.error("서버와의 통신 중 오류가 발생했습니다.");
                    }
                }
            };

            xhr.send("userId=" + encodeURIComponent(userId));
        }
    </script>
</head>
<body>

	<div class="outer">
		<div id="joinInfoArea">
			<form id="joinForm" action="<%= request.getContextPath() %>/memberJoin"
			method="post" onsubmit="return validate();">
				<h1>회원 가입</h1>
				
				<h4>* 아이디</h4>
				<span class="input_area"><input type="text" maxlength="20" name="userId" required></span>
				<button id="idCheck" type="button" onclick ="checkId()">중복확인</button>
				
				<h4>* 비밀번호</h4>
				<span class="input_area"><input type="password" maxlength="20" name="userPwd" required></span>
				
				<h4>* 비밀번호 확인</h4>
				<span class="input_area"><input type="password" maxlength="20" name="userPwd2" required></span>
				<label id="pwdResult"></label>
				
				<h4>* 이름</h4>
				<span class="input_area"><input type="text" maxlength="5" name="userName" required></span>
				
				<h4>연락처</h4>
				<span class="input_area"><input type="tel" maxlength="11" name="phone"
										placeholder="(-없이)01012345678"></span>
										
				<h4>이메일</h4>
				<span class="input_area"><input type="email" name="email"></span>
				
				<h4>우편번호</h4>
				<span class="input_area"><input type="text" name="address" class="postcodify_postcode5"></span>
				<button type="button" id="postcodify_search_button">검색</button>
				<h4>도로명주소</h4>
				<span class="input_area"><input type="text" name="address" class="postcodify_address"></span>
				<h4>상세주소</h4>
				<span class="input_area"><input type="text" name="address" class="postcodify_details"></span>
				
				<h4>관심분야</h4>
				<span class="input_area">
					<input type="checkbox" id="sports" name="interest" value="운동">
					<label for="Concert">공연</label>
					<input type="checkbox" id="climbing" name="interest" value="등산">
					<label for="food">음식</label>
					<input type="checkbox" id="fishing" name="interest" value="낚시">
					<label for="history">전통 축제</label>
					<input type="checkbox" id="game" name="interest" value="게임">
					<label for="game">게임</label>
					<input type="checkbox" id="etc" name="interest" value="기타">
					<label for="etc">기타</label>
				</span>
				<div class="btnArea">
					<button id="joinBtn">가입하기</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- 주소 API 스크립트 -->
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	
	<script>
		function validate(){
			return true;
		}
	</script>
</body>
</html>