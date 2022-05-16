<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의</title>
<!-- <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" /> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style type="text/css">
.save{
/* style="background-color: #FD8A69" */
	background-color: #FD8A69;
	border-radius: 5px;
	border: 1px solid white;
	color: white;
}

.list{
/* style="background-color: #FD8A69" */
	background-color: #FD8A69;
	border-radius: 5px;
	border: 1px solid white;
	color: white;
	
}
</style>
</head>
<body>
	<article>
		<div class="container" >
			<h2>글쓰기</h2>
			<hr>
			<form name="form" id="form" role="form" method="post">
				<div class="mb-3">
					<label for="title">제목</label> <input type="text"
						class="form-control" name="title" id="title"
						placeholder="제목을 입력해 주세요">
				</div>
				<hr>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content" id="content"
						placeholder="내용을 입력해 주세요"></textarea>
				</div>
				<hr>
			</form>
			<div>
				<!-- <button type="button" class="btn btn-sm btn-primary" id="btnSave" >저장</button> -->
				<input type="submit" value="저장"class="save" id="">
				<input type="submit" value="목록" class="list" onclick="location.href='list.jsp'" >
		</div>
		</div>
	</article>

</body>
</html>