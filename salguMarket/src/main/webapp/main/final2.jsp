<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<script type="text/javascript">

</script>
<style type="text/css">

* {
	margin: 0;
	padding: 0;
}

html {
	min-width: 980px;
	height: 100%;
	font-size: 62.5%
}

body {
	position: relative;
	color: #212529;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	font-weight: 400;
	min-height: 100%;
	-moz-osx-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased
}

input {
	-webkit-appearance: none;
	border: solid 1px #CED4DA;
	padding: 1rem 1.4rem;
	margin: 1.6rem 0;
	font-size: 1.6rem;
	border-radius: 3px
}

input:disabled {
	background-color: #E9ECEF;
	color: #fff
}

.sr-only {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

input, textarea, select, button {
	font-family: inherit
}

/* header */

button:focus, input:focus, textarea:focus {
	outline: none !important;
	box-shadow: none
}

input::-webkit-input-placeholder {
	color: #CED4DA
}

input:-moz-placeholder {
	color: #CED4DA
}

button, .button {
	-webkit-appearance: none;
	border-radius: 6px;
	box-sizing: border-box;
	border: 1px solid #CED4DA;
	color: #212529;
	text-align: center;
	font-weight: 700;
	background-color: #fff;
	margin: 1.6rem 0;
	text-decoration: none
}

#fixed-bar {
	width: 100%;
	background-color: #fff
}

#fixed-bar #fixed-bar-wrap{
	display: flex;
	align-items: center;
	width: 100%;
	max-width: 1024px;
	margin: 0 auto;
	padding: 16px 0
}

#fixed-nav-wrap{
	align-items: center;
	width: 100%;
	max-width: 1024px;
	margin: 0 auto;
	text-align: center;
	padding-top: 30px;
}

#fixed-nav-wrap .fixed-nav-menu{
	display: inline-flex;
}


#fixed-bar #fixed-bar-wrap #fixed-bar-logo-title {
	display: inline-block;
	margin-right: 32px;
}

#fixed-bar #fixed-bar-wrap #fixed-bar-logo-title .fixed-logo {
	width: 120px;
	margin-bottom: 5px;
	vertical-align: text-bottom
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search {
	flex: 1;
	padding-bottom: 0px;
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-input-wrap {
	display: flex;
	max-width: 400px;
	height: 40px;
	justify-content: space-between;
	padding: 0 1.6rem;
	border-radius: 5px;
	border: solid 1px #e9ecef;
	text-decoration: none;
	box-sizing: border-box
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-input-wrap:focus-within
	{
	border: solid 1px #212529
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-input-wrap .fixed-search-input
	{
	display: block;
	width: 100%;
	border: none;
	padding: 0;
	margin: 0;
	font-size: 16px;
	color: #212529;
	background-color: transparent
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-input-wrap .fixed-search-input:focus
	{
	outline: none
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-input-wrap .fixed-search-icon
	{
	width: 19px;
	height: 39px;
	fill: #868e96;
	padding: 1rem 0
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-input-wrap #header-search-button
	{
	border: none;
	margin: 0;
	background-color: transparent
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-keyword-wrap {
	border: 1px solid #FF8A3D;
	width: 448px;
	padding: 10px;
	background: #fff;
	z-index: 101;
	line-height: 2;
	display: none;
	font-size: 16px;
	font-weight: 600
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-keyword-wrap .search-keyword-text
	{
	color: #FF8A3D
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-keyword-wrap .search-keyword-list
	{
	white-space: normal;
	word-break: normal
}

#fixed-bar #fixed-bar-wrap #fixed-bar-search .search-keyword-wrap .search-keyword-list .search-keyword
	{
	text-decoration: none;
	color: #212529;
	white-space: nowrap;
	margin-right: 8px
}

#fixed-bar #fixed-bar-wrap .fixed-bar-menu {
	display: flex;
	font-family: Noto Sans KR;
	color: #4D5159;
	padding-bottom: 0px;
}

#fixed-nav-wrap .fixed-nav-menu{
	font-family: Noto Sans KR;
	color: #4D5159;
	padding-bottom: 0px;
}

#fixed-bar #fixed-bar-wrap .fixed-bar-menu .chat-button {
	margin: 0;
	width: 120px;
	height: 40px;
	border: 1px solid #D1D3D8;
	box-sizing: border-box;
	border-radius: 6px;
	font-size: 0
}

#fixed-nav-wrap .fixed-nav-menu .chat-button{
	width: 120px;
	height: 40px;
	border: 1px solid #D1D3D8;
	box-sizing: border-box;
	border-radius: 6px;
}

#fixed-bar #fixed-bar-wrap .fixed-bar-menu .chat-button span, .chat-button{
	font-style: normal;
	font-weight: bold;
	vertical-align: middle;
}

#fixed-bar #fixed-bar-wrap .fixed-bar-menu .chat-button span.button-text, span.button-text
	{
	color: #4D5159;
	font-size: 16px;
}

#fixed-bar #fixed-bar-wrap .fixed-bar-menu .chat-button
	{
	margin-top: 1px;
	margin-left: 2px;
	font-family: Roboto;
	font-size: 14px;
	color: #FF7E36;
}

span.button-beta{
	margin-top: 1px;
	margin-left: 2px;
	font-family: Roboto;
	font-size: 16px;
	color: #fd8a69;
}

.chat-button{
	text-align: center;
}


.fixed-bar-box-shadow {
	box-sizing: border-box;
	border-bottom: 1px solid rgba(0, 0, 0, 0.04);
	position: -webkit-sticky;
	position: sticky;
	top: 0;
	z-index: 1
}

/* footer */

footer {
	background-color: #FBF7F2; /* #FBF7F2 #495057 */
	color: #fff;
	padding: 8rem 0;
}

footer .footer-container {
	width: 1024px;
	margin: 0 auto
}

footer .footer-container .footer-top {
	display: flex;
	justify-content: space-between;
	margin-bottom:0;
}

footer .footer-container .footer-top .footer-logo {
	width: 130px;
	height: 37px;
	background-image:
		url(https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/logo-a4f4848ffd1d5fcb13d1d3ecf82ffbc77c31ebe226f67097386497a34638c059.svg);
	background-size: 130px 37px
}

footer .footer-container .footer-top .footer-list {
	list-style-type: none
}

footer .footer-container .footer-top .footer-list .footer-list-item {
	display: block;
	font-size: 1.6rem;
	margin-bottom: 1.6rem
}

footer .footer-container .footer-top .footer-list .footer-list-item a {
	color: #FF7E36;
	text-decoration: none
}

footer .footer-container .footer-top .footer-list .footer-list-item a:hover
	{
	text-decoration: underline
}

footer .footer-container .footer-top .footer-list .footer-list-item .link-highlight
	{
	color: #868e96;
	font-weight: 700
}

footer .footer-container .footer-bottom {
	display: flex;
	justify-content: space-between;
	border-top: 1px solid rgba(255, 255, 255, 0.1);
	margin-top: 0;
}

footer .footer-container #copyright {
	color: #ADB5BD;
	margin-top: 3.2rem
}

footer .footer-container #copyright .copyright-list {
	list-style-type: none;
	margin-bottom: 0.4rem
}

footer .footer-container #copyright .copyright-list .copyright-list-item
	{
	display: inline-block;
	font-size: 1.4rem;
	margin: 0 0.8rem 0 0
}

footer .footer-container #copyright .copyright-list .copyright-list-item a
	{
	text-decoration: none;
	color: #868e96
}

footer .footer-container #copyright .copyright-list .copyright-list-item a:hover
	{
	text-decoration: underline
}

footer .footer-container #copyright .copyright-list-light {
	margin-top: 1.6rem;
	color: #868e96
}

footer .footer-container #copyright .copyright-text {
	font-size: 1.4rem;
	margin: 0.4rem 0;
	color: #868e96
}

footer .footer-container #social {
	margin-top: 3.2rem;
	margin-bottom: 3.2rem
}

footer .footer-container #social .social-list {
	list-style-type: none
}

footer .footer-container #social .social-list .social-list-item {
	display: inline-block;
	margin: 0px;
	margin-right: 2.4rem
}

footer .footer-container #social .social-list .social-list-item .footer-social-link
	{
	display: block
}

footer .footer-container #social .social-list .social-list-item:last-child
	{
	margin-right: 0
}

footer .footer-container #social .social-list .global-links {
	padding-left: 26px;
	display: inline-block;
	margin: 0px
}

footer .footer-container #social .social-list .global-links select {
	margin-left: 6px;
	text-decoration: underline;
	text-underline-position: under;
	vertical-align: top;
	background: #495057;
	color: #ADB5BD;
	font-size: 16px;
	line-height: 24px;
	border: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	-ms-appearance: none
}

/* footer 고정용 */

#wrap {
    min-height: 100vh;
    position: relative;
    width: 100%;
}

footer {
	width: 100%;
	height: 110px; /* 내용물에 따라 알맞는 값 설정 */
	bottom: 0px;
	position: absolute;
}

/* section {
	padding-bottom: 110px; footer의 height값과 동일
} */


#section1, #section2{
	padding-bottom: 0px;
}

#section3{
	padding-top: 30px;
}

html, body {
  margin: 0;
  padding: 0;
}

/* 여기까지 */

/* home-main-section 요소들(화면비 header랑 맞추는 용도) */

.home-main-section .home-main-content {
	width: 1024px;
	margin: 0 auto;
	/* display: flex; */
	align-items: center;
	justify-content: space-between
}

/* 여기까지 */

/* 상품 화면 */

#sangpoom{
	align-items: center;
	width: 100%;
	max-width: 1024px;
	margin: 0 auto;
	padding-bottom: 50%;
}

p.card-text, p.card-price{
	color: #4D5159;
    font-size: 16px;
	font-style: normal;
    font-family: Roboto;
}

p.card-title{
	color: #4D5159;
    font-size: 16px;
	font-style: normal;
    font-family: Roboto;
    font-weight: bold;
}

a {
  text-decoration: none;
}

.card-img-top{
	height: 15rem;
	object-fit: cover;
}

small.text-muted{
	float: right;
}

.pagination{
	margin-top: 100px;
}

a.page-link{
	color: #4D5159;
	font-size: 16px;
	font-style: normal;
    font-family: Roboto;
}

/* 여기까지 */

/* sidebar 속성 */

p#offcanvasScrollingLabel{
	color: #4D5159;
    font-size: 25px;
	font-style: normal;
    font-family: Roboto;
    font-weight: bold;
}

button.accordion-button.collapsed, button.accordion-button, .accordion-body {
	color: #4D5159;
    font-size: 16px;
	font-style: normal;
    font-family: Roboto;

}

li.list-group-item{
	text-align: left;
}

li.list-group-item a{
	color: #4D5159;
}

offcanvas offcanvas-start show{
	visibility: visible;
	width: 281px;
}



/* 여기까지 */

</style>
<link rel="icon" href="../img/salgoomk.ico" type="image/x-icon" sizes="16x16">
<title>살사람 구해요 '살구마켓'</title>
</head>
<body>
<div id='wrap'>
	<div class="container">
			<header id="fixed-bar">
		<div id="fixed-bar-wrap">		
			<section id="section1">
			<a id="fixed-bar-logo-title"
				href="#">
				<span class="sr-only">살구마켓</span> <img class="fixed-logo" alt="당근마켓"
				src="../img/2.png" width="120" height="34" />
			</a>
			</section>
			<section id="fixed-bar-search">
				<div class="search-input-wrap">
					<span class="sr-only">검색</span> <input type="text"
						name="header-search-input" id="header-search-input"
						class="fixed-search-input" placeholder="물품명, 판매자 등을 검색해보세요" />
					<button id="header-search-button">
						<img class="fixed-search-icon" alt="Search"
							src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/search-icon-7008edd4f9aaa32188f55e65258f1c1905d7a9d1a3ca2a07ae809b5535380f14.svg"
							width="24" height="24" />
					</button>
				</div>
			</section>
			<section class="fixed-bar-menu">
				<!-- 로그인창 링크 넣기 -->
				<a href="../member/login.jsp" target="_blank">
					<button class="chat-button" style="width: 82px; margin-right: 7px">
						<span class="button-text">로그인</span>
					</button>
				</a> <a href="../member/joinMembership.jsp" target="_blank">
					<button class="chat-button" style="width: 92px; margin-right: 7px">
						<span class="button-text">회원가입</span>
					</button>
				</a> <a href="../mypage/main.jsp" target="_blank">
					<button class="chat-button" style="width: 98px;">
						<span class="button-beta">마이페이지</span>
					</button>
				</a>
			</section>
		</div>
	</header>
	
	<section class="home-main-section" id="section2">
	<!-- 메인화면 -->
	<div class="home-main-content">
			<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../img/carousel_image1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/carousel_image2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/carousel_image3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
<!-- carousel end -->
	<div id="fixed-nav-wrap">	
<section class="fixed-nav-menu">

		<button class="chat-button" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling" style="margin-right: 7px;">
			<span class="button-text">상품카테고리</span>
		</button>



<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
  <div class="offcanvas-header">
    <p class="offcanvas-title" id="offcanvasScrollingLabel">카테고리</p>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  
  <div class="offcanvas-body">
    	<div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <p class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        전자기기
      </button>
    </p>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
		<ul class="list-group list-group-flush">
		  <li class="list-group-item"><a href="#">컴퓨터/노트북</a></li>
		  <li class="list-group-item"><a href="#">컴퓨터/노트북</a></li>
		  <li class="list-group-item"><a href="#">컴퓨터/노트북</a></li>
		</ul>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <p class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        Accordion Item #2
      </button>
    </p>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
    </div>
  </div>
  <div class="accordion-item">
    <p class="accordion-header" id="flush-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
        Accordion Item #3
      </button>
    </p>
    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
    </div>
  </div>
</div>

  </div>
</div>

<a href="../pd/register.jsp" target="_blank">
			<button class="chat-button" style="width: 85px; margin-right: 7px">
				<span class="button-beta">살구하기</span>
			</button>
		</a> <a href="../board/list2.jsp" target="_blank">
			<button class="chat-button" style="width: 85px; margin-right: 7px">
				<span class="button-text">공지사항</span>
			</button>
		</a> <a href="../board/list.jsp" target="_blank">
			<button class="chat-button" style="width: 81px;">
				<span class="button-text">1:1문의</span>
			</button>
		</a>
 </section>
 </div>
<!-- middle-navbar end -->
<div class="container" id="sangpoom">
<section id="section3">
	<div class="row" style="margin-bottom: 20px;">
	<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="../pd/detail.jsp"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="../pd/detail.jsp"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
</div>
	<div class="row" style="margin-bottom: 20px;">
	<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
</div>
	<div class="row" style="margin-bottom: 20px;">
	<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
</div>
<div class="row" style="margin-bottom: 20px;">
	<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
</div>
<div class="row" style="margin-bottom: 20px;">
	<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
		<div class="col-lg-3 col-md-6">
		<div class="card">
		  <a href="#"><img src="../img/clo1.jpg" class="card-img-top" alt="..."></a>
		  <div class="card-body">
		    <a href="#"><p class="card-title">Card title</p></a>
		    <p class="card-text">판매글을 적어주세요</p>
		    <p class="card-price">1000원</p>
		    <small class="text-muted">9 mins</small>
		  </div>
		</div>
	</div>
</div>

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center pagination-lg">
    <li class="page-item disabled">
      <a class="page-link">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

</section>
</div>



	</div>
	</section>
	</div>
	

<footer id="footer" style="padding-top: 45px; padding-bottom: 240px;">
	<div class="footer-container">
		<div class="footer-top">
			<img class="fixed-logo" alt="당근마켓" src="../img/2.png" width="120"
				height="34" />
			<ul class="footer-list">
				<li class="footer-list-item"><a class="link-highlight"
					href="/trust">믿을 수 있는 중고거래</a></li>
				<li class="footer-list-item"><a class="link-highlight"
					href="https://cs.kr.karrotmarket.com/wv/faqs">자주 묻는 질문</a></li>
			</ul>
			<ul class="footer-list">
				<li class="footer-list-item"><a target="_blank"
					class="link-highlight" href="https://ads-local.daangn.com">광고주센터</a></li>
				<li class="footer-list-item"><a target="_blank"
					href="https://daangnpay.com">당근페이</a>
				<li class="footer-list-item"><a target="_blank"
					class="ga-click" data-event-category="town_link_from"
					data-event-action="index_base" data-event-label="footer_town"
					href="https://town.daangn.com">동네가게</a></li>
			</ul>
			<ul class="footer-list">
				<li class="footer-list-item"><a target="_blank"
					href="https://team.daangn.com/">회사 소개</a></li>
				<li class="footer-list-item"><a target="_blank"
					href="https://team.daangn.com/jobs/">채용</a></li>
			</ul>
			<ul class="footer-list policy">
				<li class="footer-list-item"><a target="_blank"
					href="https://policy.daangn.com/terms.html">이용약관</a></li>
				<li class="footer-list-item"><a target="_blank"
					href="https://policy.daangn.com/privacy.html">개인정보처리방침</a></li>
				<li class="footer-list-item"><a target="_blank"
					href="https://policy.daangn.com/location.html">위치기반서비스 이용약관</a></li>
			</ul>
		</div>

		<div class="footer-bottom">
			<div id="copyright">
				<ul class="copyright-list">
					<li class="copyright-list-item">고객센터 <a
						href="callto:cs@salguservice.com">1672-0978</a></li>
					<li class="copyright-list-item">제휴문의 <a
						href="mailto:contact@salgu.com">contact@salgu.com</a></li>
					<li class="copyright-list-item">위치 : <a
						href="#">서울특별시 구로구 디지털로30길 28, 609호 (살구서비스)</a></li>
					<div class="copyright-text">©Salgu Market Inc.</div>
				</ul>
			</div>
		</div>
	</div>
</footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>