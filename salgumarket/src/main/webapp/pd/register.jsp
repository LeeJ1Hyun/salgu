<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록하기</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
.buttons {
	text-align: center;
}

.reg, .title {
	width: 80%;
	margin: 0 10%;
}

.title {
	padding-top: 20px;
	padding-bottom: 20px;
}

.red {
	font-size: 16px;
	color: red;
}

.blue {
	font-size: 14px;
	color: rgb(0, 153, 255);
}
#btnreg{
	background-color: #FD8A69;
	border-color: #FD8A69;

}
</style>
</head>
<body>
<div class="title">
		<h2>
			기본정보 <span class="red"> *필수항목</span>
		</h2>
		<hr>
	</div>

	<form class="reg">
		<div class="row mb-3">
			<label for="inputEmail3" class="col-sm-2 col-form-label">상품이미지<span
				class="red">*</span></label>
			<div class="col-sm-10">
				<img src="../img/upload.png" width="180px" height="180px">
				<p class="blue">
					<br> <b>* 상품 이미지는 640*640에 최적화 되어 있습니다.</b><br> - 상품 이미지는
					PC에서는 1:1, 모바일에서는 1:1.23 비율로 보여집니다.<br> - 이미지는 상품 등록 시 정사각형으로
					잘려서 등록됩니다.<br> - 이미지를 클릭할 경우 원본 이미지를 확인할 수 있습니다.<br> -
					이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.<br> - 큰 이미지일 경우 이미지가 깨지는 경우가
					발생할 수 있습니다.<br> 최대 지원 사이즈인 640 * 6410으로 리사이즈 해서 올려주세요.(개당 이미지
					최대 10M).
				</p>
				<div class="input-group mb-3">
			<input type="file" class="form-control" id="inputGroupFile02">
			<label class="input-group-text" for="inputGroupFile02">등록</label>
			</div>
			</div>
		</div>
		<hr>
		<div class="row mb-3">
			<label for="inputEmail3" class="col-sm-2 col-form-label">상품명<span
				class="red">*</span></label>
			<div class="col-sm-10">
				<input type="email" class="form-control"
					placeholder="상품명을 입력해주세요." id="inputEmail3">
			</div>
		</div>
		<hr>
		<div class="row mb-3">
			<label for="inputEmail3" class="col-sm-2 col-form-label">카테고리<span
				class="red">*</span></label>
			<div class="col-sm-10">
				<select class="form-select" aria-label="Default select example"
					style="width: 40%">
					<option selected>카테고리</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select> <br> <select class="form-select"
					aria-label="Default select example" style="width: 40%">
					<option selected>하위 카테고리</option>
					<option value="a">a</option>
					<option value="b">b</option>
					<option value="c">c</option>
				</select>

				
				
			</div>
		</div>
		<hr>
		<div class="row mb-3">
			<label for="inputEmail3" class="col-sm-2 col-form-label">상품가격<span
				class="red">*</span></label>
			<div class="col-sm-10">
				<input type="text" class="form-control" placeholder="가격을 입력해주세요."
					id="inputEmail3" style="width: 50%">
			</div>
		</div>
		<hr>

		<div class="row mb-3">
			<label for="inputEmail3" class="col-sm-2 col-form-label">상품설명<span
				class="red">*</span></label>
			<div class="col-sm-10">
				<textarea class="form-control" placeholder="상품 설명을 입력해주세요."
					id="floatingTextarea2" style="height: 100px"></textarea>
				<label for="floatingTextarea2"></label>
			</div>
		</div>
		<hr>
		<div class="buttons">
			<button type="button" class="btn btn-secondary">취소</button>
			<button type="submit" class="btn btn-primary" id="btnreg">등록</button>
		</div>

	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>