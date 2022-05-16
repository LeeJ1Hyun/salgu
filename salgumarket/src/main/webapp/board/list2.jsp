<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<!-- <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" /> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style type="text/css">
#container {
	width: 70%;
	margin: 0 auto;
	padding-top: 10%;
}

#list {
	text-align: center;
}
#write{
	text-align: right;
}
.write {

	background-color: #FD8A69;
	border-radius: 5px;
	border: 1px solid white;
	color: white;
}

.table>thead {
	background-color: #FD8A69;
}
/* #b3c6ff */
.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #FFEFD5;
} /* #e6ecff */
.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
}
.divSearch{
		text-align:center;		
		padding:5px 0 2px 0;
	}
.search{
/* style="background-color: #FD8A69" */
	background-color: #FD8A69;
	border-radius: 5px;
	border: 1px solid white;
	color: white;
}



</style>
</head>
<body>

	<div id="container">
		<div id="list">
			<h2>공지사항</h2>
		</div>

		<div>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th width="10%">번호</th>
						<th width="50%">제목</th>
						<th width="10%">작성자</th>
						<th width="20%">작성일</th>
						<th width="10%">조회</th>
					</tr>
				</thead>
				<tbody>
					<tr>

						<td>1</td>
						<td>안녕하세요</td>
						<td>이동미</td>
						<td>2022-01-01</td>
						<td>1</td>
					<tr>
					<tr>
						<td>2</td>
						<td>반갑습니다</td>
						<td>아로리</td>
						<td>2022-01-01</td>
						<td>2</td>
					<tr>
				</tbody>
			</table>
			<div id="write">
				<input type="submit" value="글쓰기" class="write" onclick="location.href='write2.jsp'">
			</div>
			<div class="divSearch">
				<form name="frmSearch" method="post" action=''>
					<select name="searchCondition">
						<option value="title">제목</option>
						<option value="content">내용</option>
						<option value="name">작성자</option>
					</select> 
					<input type="text" style="width: 15em;" name="searchKeyword" title="검색어 입력"> 
					<input type="submit" value="검색" class="search" >
				</form>
			</div>
			<div id="paging"></div>
		</div>
	</div>

</body>
</html>