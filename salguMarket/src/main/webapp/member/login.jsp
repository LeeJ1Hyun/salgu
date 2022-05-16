<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../css/joinMembership.css" type="text/css">
<script type="text/javascript"></script>
</head>
<body>
	<div class="login-join-membership__wrap">
		<header class="**">
			<div class="headerCommonLayout"></div>
			<h1 class="**">로그인</h1>
		</header>
		<section class="**">
			<div class="login-join-membership__con">
				<form name="loginform" class="login-form" method="post"
					action="register_ok.jsp" onsubmit="**">
					<div class="login-input">
						<div class="login-input__wrap">
							<input type="email" name="id" class="login-input__input"
								placeholder="아이디(이메일 입력)" required autofocus>
						</div>
						<div class="login-input__wrap">
							<input type="password" name="pwd" class="login-input__input"
								placeholder="비밀번호" required>
							<button type="button" class="login-input__button-eye"
								aria-label="비밀번호 보이기" onclick="toggleInputType(this);"></button>
						</div>
					</div>
					<div class="">
						<input type="submit" class="login-input__input login-button" id="login" value="로그인">
					</div>
					<div class="login-member__util">
						<input type="checkbox" class="" id="autologin" name="autologin">
						<label for="autologin" class="">자동 로그인</label>
						<ul class="login-member__util__list">
							<li class="login-member__util__item">
							<a href="" class="">아이디 찾기</a></li>
							<li class="login-member__util__item">
								<a href="" class="">비밀번호 찾기</a></li>
						</ul>
					</div>
					<div class="**">
						<span class="login-bottom-text__text"> 아직 회원이 아니신가요?</span> <a
							href="joinMembership.jsp?" class="">회원가입</a>
					</div>
				</form>
			</div>
		</section>
		<footer></footer>
	</div>
</body>
</html>