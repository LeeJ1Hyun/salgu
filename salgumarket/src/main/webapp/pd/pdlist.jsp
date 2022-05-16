<%@page import="com.salguMarket.category.model.CategoryDAO"%>
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
<style type="text/css">
	/* 스타일 속성 줘야함, 기존 메인페이지에서 분리 예정 */
</style>
<title>pdlist.jsp</title>
</head>
<body>

	<div class="container" id="sangpoom">
		<section id="section3">
			<%
			CategoryDAO Dao = new CategoryDAO();
			Dao.selectAll()
			for(int i=0;i<%>
			<div class="row" style="margin-bottom: 20px;">
				<div class="col-lg-3 col-md-6">
					<div class="card">
						<a href="../pd/detail.jsp"><img src="../img/clo1.jpg"
							class="card-img-top" alt="..."></a>
						<div class="card-body">
							<a href="../pd/detail.jsp"><p class="card-title">Card
									title</p></a>
							<p class="card-text">판매글을 적어주세요</p>
							<p class="card-price">1000원</p>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="card">
						<a href="#"><img src="../img/clo1.jpg" class="card-img-top"
							alt="..."></a>
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
						<a href="#"><img src="../img/clo1.jpg" class="card-img-top"
							alt="..."></a>
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
						<a href="#"><img src="../img/clo1.jpg" class="card-img-top"
							alt="..."></a>
						<div class="card-body">
							<a href="#"><p class="card-title">Card title</p></a>
							<p class="card-text">판매글을 적어주세요</p>
							<p class="card-price">1000원</p>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>

		</section>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>