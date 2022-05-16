<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../css/joinMembership.css" type="text/css">
<script type="text/javascript"></script>
</head>
<body>
	<div class="login-join-membership__wrap">
		<header class="**">
		<div class="headerCommonLayout"></div>
		</header>
		<section>
			<div class="login-join-membership__con">
				<form class="login-join-membership__form" method="post"
					action="register_ok.jsp" onsubmit="return send()">
					<!-- 
					<div class="login-input">
						<label for="loginJoinMembershipId" class="login-input__label">아이디<strong
							class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="text" id="loginJoinMembershipId"
								class="login-input__input" placeholder="영문,숫자 조합 5~11자리"
								maxlength="10" required autofocus> <input type="submit"
								id="idcheck" class="loginJoinMembershipBtn" value="중복확인">
						</div>
					</div>
					 -->
					<div class="login-input">
						<label for="loginJoinMembershipId" class="login-input__label">아이디<strong
							class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="email" id="loginJoinMembershipId"
								class="login-input__input" placeholder="이메일(someone@example.com)" required
								autofocus> <input type="submit" id="idcheck"
								class="loginJoinMembershipBtn" value="중복확인">
						</div>
					</div>
					<div class="login-input">
						<label for="loginJoinMembershipPwd" class="login-input__label">비밀번호<strong
							class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="password" id="loginJoinMembershipPwd"
								class="login-input__input" placeholder="숫자,문자,특수문자 조합 8~15자리"
								maxlength="15" required>
						</div>
					</div>
					<div class="login-input">
						<label for="loginJoinMembershipPwdOk" class="login-input__label">비밀번호
							확인<strong class="notice">필수</strong>
						</label>
						<div class="login-input__wrap">
							<input type="password" id="loginJoinMembershipPwdOk"
								class="login-input__input" maxlength="15" required>
						</div>
					</div>

					<div class="login-input">
						<label for="loginJoinMembershipName" class="login-input__label">이름<strong
							class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="text" id="loginJoinMembershipName"
								class="login-input__input" required>
						</div>
					</div>
					<div class="login-input">
						<label for="loginJoinMembershipNick" class="login-input__label">닉네임<strong
							class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="text" id="loginJoinMembershipNick"
								class="login-input__input" placeholder="2~20자" required>
							<input type="submit" id="nickcheck"
								class="loginJoinMembershipBtn" value="중복확인">
						</div>
					</div>
					<div class="login-input">
						<label for="loginJoinMembershipZip" class="login-input__label">우편번호<strong
							class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="text" id="loginJoinMembershipZip"
								class="login-input__input" placeholder="주소를 검색하세요" required>
							<input type="submit" id="searchzip"
								class="loginJoinMembershipBtn" value="주소검색" />
						</div>
					</div>
					<div class="login-input">
						<label for="loginJoinMembershipAddress1"
							class="login-input__label">주소<strong class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="text" id="loginJoinMembershipAddress1"
								class="login-input__input" required readonly>
						</div>
					</div>
					<div class="login-input">
						<label for="loginJoinMembershipAddress2"
							class="login-input__label">상세주소</label>
						<div class="login-input__wrap">
							<input type="text" id="loginJoinMembershipAddress2"
								class="login-input__input" placeholder="나머지 주소를 입력하세요">
						</div>
					</div>
					<div class="login-input">
						<label for="loginJoinMembershipHp" class="login-input__label">HP<strong
							class="notice">필수</strong></label>
						<div class="login-input__wrap">
							<input type="text" id="loginJoinMembershipHp"
								class="login-input__input" maxlength="11"
								placeholder="'-'없이 번호만 입력하세요" required><br> <br>
						</div>
					</div>
					<div class="joinCancleBtn">
						<input type="submit" id="join" value="가입"> <input
							type="reset" id="cancle" value="취소">
					</div>
				</form>
			</div>
		</section>
	</div>
</body>
</html>