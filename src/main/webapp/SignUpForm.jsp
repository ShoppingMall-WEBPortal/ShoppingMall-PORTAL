<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ShoppingMall PORTAL - Sign Up</title>
<link rel="stylesheet" href="css/style.css">
<style>
#table {
	width: 500px;
	height: 100vh;
	margin: auto;
	border: 1px solid black;
	text-align: center;
}

.email {
	width: 145px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-color: lightgray;
	outline: none;
	background-color: rgb(233, 233, 233);
}
.domain {
	width: 280px;
	height: 32px;
	border: solid 1px;
}

.text {
	width: 90%;
	height: 32px;
	font-size: 15px;
	border: 0;
	outline: none;
	background-color: rgb(233, 233, 233);
}


select {
	width: 90%;
	height: 32px;
	font-size: 15px;
	border: 1;
	border-color: lightgray;
	outline: none;
}

.btn {
	width: 90%;
	height: 32px;
	font-size: 15px;
	border: 0;
	outline: none;
	background-color: rgb(164, 199, 255);
}

.btn:active {
	width: 90%;
	height: 32px;
	font-size: 15px;
	border: 0;
	outline: none;
	background-color: rgb(61, 135, 255);
}
</style>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        addr += extraAddr;
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById('sample6_address').value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById('sample6_detailAddress').focus();
                }
            }).open();
        }
    </script>
</head>
<body>
	<header>
		<div class="logo">
			<a href="shoppingmallPortalWEB.do">SHOPPINGMALL.ORG</a>
		</div>
		<nav>
			<ul>
				<li><a href="SignUpForm.do">Sign Up</a></li>
				<li><a
					href="http://localhost:8080/ShoppingMall-WEB/StoneAIsland.do">Stone
						AIsland</a></li>
				<li><a href="http://172.31.9.177:8080/ShoppingMall/index.do">Adios</a></li>
				<li><a href="http://172.31.9.178:8080/ShoppingMall/index.do">JeonBok</a></li>
			</ul>
		</nav>
	</header>



	<div id="table">
		<form action="SignUpProcess.do">
			<h2>회원가입</h2>
			<input type="text" class="text" placeholder="ID" name="id">
			<br><h1></h1> 
			<input type="password" class="text" placeholder="Password" name="password">
			<br><h1></h1>
			<input type="text" class="text" placeholder="이름을 입력하세요" name="name">
			<br><h1></h1>
			<input type="text" pattern="[0-9]+"
				placeholder="전화번호를 입력하세요 ('-' 제외)" class="text" name="phone">
				<br><h1></h1>
			<input type="text" class="email" placeholder="e-mail" name="email">
			@ <select name="domain" class="domain">
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="daum.net">daum.net</option>
				<option value="nate.com">nate.com</option>
			</select>
			<br><h1></h1>
			<div align="center" >
				<input name="birthday" type="text" pattern="[0-9]+" class="text"
					placeholder="생일을 입력하세요 ex) 980101" style="width: 250px;">
				<span style="font-size: 1.5em;">&nbsp;-&nbsp;</span> 
				<input name="genderType" type="password" pattern="[0-9]+" style="width: 30px;">
				<span style="font-size: 1.5em;">&nbsp;● ● ● ● ● ●</span>
			</div>
			<br><h2></h2>
			<div align="center" >
			<table>
        <tr>
            <td>
                <input type="text" name="postcode" id="sample6_postcode" class="text" placeholder="우편번호" size="40">
            </td>
            <td>
                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="text" name="basicAddr" id="sample6_address" class="text" placeholder="주소" style="width: 100%;">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="text" name="detailAddr" id="sample6_detailAddress" class="text" placeholder="상세주소" style="width: 100%;">
            </td>
        </tr>
    </table>
        </div>
			<h1></h1>
			<input type="submit" value="가입하기" class="btn">


		</form>
	</div>
</body>
</html>
