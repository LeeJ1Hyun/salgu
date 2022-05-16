<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>pdcategory.jsp</title>
</head>
<body>
	<button class="chat-button" type="button" data-bs-toggle="offcanvas"
		data-bs-target="#offcanvasScrolling"
		aria-controls="offcanvasScrolling" style="margin-right: 7px;">
		<span class="button-text">상품카테고리</span>
	</button>

	<!-- category start -->
	<div class="offcanvas offcanvas-start" data-bs-scroll="true"
		data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling"
		aria-labelledby="offcanvasScrollingLabel">
		<div class="offcanvas-header">
			<p class="offcanvas-title" id="offcanvasScrollingLabel">
				<a href="pdlist.jsp">전체 카테고리</a>
			</p>
			<button type="button" class="btn-close text-reset"
				data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>

		<div class="offcanvas-body">

			<!-- accordion start -->
			<div class="accordion accordion-flush" id="accordionFlushExample">
				<div class="accordion-item">
					<p class="accordion-header" id="flush-headingOne">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
							aria-expanded="false" aria-controls="flush-collapseOne">
							전자기기</button>
					</p>
					<div id="flush-collapseOne" class="accordion-collapse collapse"
						aria-labelledby="flush-headingOne"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="pdlist.jsp?c=101">컴퓨터/노트북</a></li>
								<li class="list-group-item"><a href="pdlist.jsp?c=102">TV</a></li>
								<li class="list-group-item"><a href="pdlist.jsp?c=103">오디오/이어폰</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<p class="accordion-header" id="flush-headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
							aria-expanded="false" aria-controls="flush-collapseTwo">
							생활용품</button>
					</p>
					<div id="flush-collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="flush-headingTwo"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="#">욕실용품</a></li>
								<li class="list-group-item"><a href="#">주방용품</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<p class="accordion-header" id="flush-headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
							aria-expanded="false" aria-controls="flush-collapseThree">
							운동기구</button>
					</p>
					<div id="flush-collapseThree" class="accordion-collapse collapse"
						aria-labelledby="flush-headingThree"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="#">런닝머신</a></li>
								<li class="list-group-item"><a href="#">자전거</a></li>
								<li class="list-group-item"><a href="#">아령</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<p class="accordion-header" id="flush-headingFour">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseFour"
							aria-expanded="false" aria-controls="flush-collapseFour">
							뷰티/미용</button>
					</p>
					<div id="flush-collapseFour" class="accordion-collapse collapse"
						aria-labelledby="flush-headingFour"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="#">화장품</a></li>
								<li class="list-group-item"><a href="#">헤어제품</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<p class="accordion-header" id="flush-headingFive">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
							aria-expanded="false" aria-controls="flush-collapseFive">
							의류</button>
					</p>
					<div id="flush-collapseFive" class="accordion-collapse collapse"
						aria-labelledby="flush-headingFive"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="#">아우터</a></li>
								<li class="list-group-item"><a href="#">신발</a></li>
								<li class="list-group-item"><a href="#">하의</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<p class="accordion-header" id="flush-headingSix">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
							aria-expanded="false" aria-controls="flush-collapseSix">
							도서</button>
					</p>
					<div id="flush-collapseSix" class="accordion-collapse collapse"
						aria-labelledby="flush-headingSix"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="#">소설</a></li>
								<li class="list-group-item"><a href="#">수필</a></li>
								<li class="list-group-item"><a href="#">만화책</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<p class="accordion-header" id="flush-headingSeven">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven"
							aria-expanded="false" aria-controls="flush-collapseSeven">
							가방</button>
					</p>
					<div id="flush-collapseSeven" class="accordion-collapse collapse"
						aria-labelledby="flush-headingSeven"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="#">핸드백</a></li>
								<li class="list-group-item"><a href="#">미니백</a></li>
								<li class="list-group-item"><a href="#">에코백</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>