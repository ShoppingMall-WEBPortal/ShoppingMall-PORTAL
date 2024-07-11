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
	width: 90%;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-color: lightgray;
	outline: none;
	background-color: rgb(233, 233, 233);
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {

        	var addr = '';
            var extraAddr = '';

            if (data.userSelectedType === 'R') {
                addr = data.roadAddress;
            } else {
                addr = data.jibunAddress;
            }

            if(data.userSelectedType === 'R'){

            	if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }

            	if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

            	if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
            }

            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            document.getElementById("sample6_detailAddress").focus();
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
	<input type="text" class="text" placeholder="ID" name="id"><br>
	<input type="password" class="text" placeholder="Password" name="password"><br>
	<input type="text" class="text" placeholder="이름을 입력하세요" name="name"><br>
	<input type="text" pattern="[0-9]+" placeholder="전화번호를 입력하세요 ('-' 제외)" class="text" name="phone"><br>
	<input type="text" class="email" placeholder="e-mail" name="email"> @ <select name="domain">
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
				</select>
				<div class="form-group" style="display:flex;">
					<input name="birthday" type="text" pattern="[0-9]+" class="form-control" placeholder="생일을 입력하세요 ex) 19980101" style="width: 300px;">
					<span style="font-size: 1.5em;">&nbsp;-&nbsp;</span>
					<input name="genderType" type="password" pattern="[0-9]+" class="form-control" style="width: 30px;">
					<span style="font-size: 1.5em;">&nbsp;● ● ● ● ● ●</span>
				</div>
				<div class="form-group" style="display:flex;">
					<input type="text" name="postcode" id="sample6_postcode" class="form-control" placeholder="우편번호">&emsp;
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</div>
				<div>
					<input type="text" name="basicAddr" id="sample6_address" class="form-control" placeholder="주소">
					<input type="text" name="detailAddr" id="sample6_detailAddress" class="form-control" placeholder="상세주소">
				</div>
				<input type="submit" value="가입하기" class="btn">
					
					
		<!-- <table>
			<tr style="text-align: center;">
				<td><h2>회원가입</h2></td>
			</tr>
			<tr>
				<td><input type="text" class="text" placeholder="ID"></td>
			</tr>
			<tr>
				<td><input type="password" class="text" placeholder="Password"></td>
			</tr>
			<tr>
				<td><input type="text" class="text" placeholder="이름을 입력하세요"></td>
			</tr>
			<tr>
				<td><input type="text" pattern="[0-9]+" placeholder="전화번호를 입력하세요 ('-' 제외)" class="text"></td>
			</tr>
			<tr>
				<td><input type="text" class="email"> @ <select>
						<option>naver.com</option>
						<option>gmail.com</option>
						<option>daum.net</option>
						<option>nate.com</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="가입하기" class="btn"
					onclick="alert('가입 성공!')"></td>
			</tr>
		</table> -->
	</form>
	</div>
</body>
</html>
