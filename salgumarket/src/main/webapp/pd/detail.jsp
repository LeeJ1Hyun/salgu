<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세보기</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
p {
	font-size: 12px;
}

.title {
	font-weight: bold;
	font-size: 30px;
}

.lead {
	font-size: 16px;
}

#title, #price {
	font-size: 30px;
	font-weight: bold;
}

#btBuy, #btReply {
	background-color: #FD8A69;
	border-color: #FD8A69;
}

#regdate {
	color: gray;
	font-size: 20px;
}

.nick {
	font-size: 1.2em;
	width: 15%;
}

.buttons {
	width: 15%
}

#btEdit {
	background-color: blue;
	border-color: blue;
}

#btDel {
	background-color: red;
	border-color: red;
}

.nav-link, .nav-link:hover {
	color: #a6a6a6;
}

.detail {
	margin: 20px 20px;
}
.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
   
    font-weight: bold;
}
</style>
</head>
<body>

	<div class="container col-xxl-8 px-4 py-5">
		<div class="row flex-lg-row-reverse align-items-center g-5 py-5">

			<div class="col-lg-6">
				<p id="title">아이폰</p>
				<p id="price">240,000원</p>
				<hr>
				<p id="regdate">등록일 2022.05.14</p>


				<div class="d-grid gap-2 d-md-flex justify-content-md-start">
					<button type="button" class="btn btn-primary btn-lg px-4 gap-3"
						id="btBuy">구매</button>

				</div>
			</div>
			<div class="col-10 col-sm-8 col-lg-6">
				<img src="../img/upload.png" class="d-block mx-lg-auto img-fluid"
					alt="Bootstrap Themes" width="400" height="400" loading="lazy">
			</div>
		</div>

	</div>
	<div class="container col-xxl-8 px-4 py-5">
		<nav>
			<div class="nav nav-tabs nav-justified" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-home-tab"
					data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
					role="tab" aria-controls="nav-home" aria-selected="true">상품정보</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false">상품문의</button>

			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab">
				<div class="detail">
					아이폰 XR 64GB 레드<br> 화면에 깨진 부분 있고, 후방 카메라 뒷 부분 깨지고 테두리 긁혔습니다.<br>
					후방 카메라 사진 찍을 때 문제는 없지만, 빛 번짐이 있습니다.<br> 배터리 잔량은 79% 남았습니다.
					구매하실 생각 높으시고 핸드폰 사진 더 원하시는 분은 채팅 주세요 :)<br> 직거래만 할게요~!!<br>
					난곡사거리 또는 2호선 신대방역에서 가능합니다 :)<br>
				</div>
			</div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab">

				<table class="table caption-top">
					<caption>
						<span style="font-size: 1.2em">상품문의<span></span> <span
							style="color: red">0</span>
					</caption>
					<div class="card-body">
						<ul class="list-group list-group-flush" style="text-align: right">
							<li class="list-group-item"><textarea class="form-control"
									id="exampleFormControlTextarea1" rows="3"></textarea>
								<button type="button" class="btn btn-dark mt-3" id="btReply">등록</button>
							</li>
						</ul>
					</div>
					<tbody>
						<tr>
							<th scope="row" class="nick">홍길동</th>
							<td>hong</td>
							<td class="buttons">
								<button type="button" class="btn btn-dark mt-3" id="btEdit">수정</button>
								<button type="button" class="btn btn-dark mt-3" id="btDel">삭제</button>
							</td>

						</tr>
						<tr>
							<th scope="row" class="nick">박길동</th>
							<td colspan="2">park</td>


						</tr>
						<tr>
							<th scope="row" class="nick">이길동</th>
							<td colspan="2">lee</td>
					</tbody>
				</table>

			</div>

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>