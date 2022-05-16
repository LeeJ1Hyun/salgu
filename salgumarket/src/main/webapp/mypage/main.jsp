<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" href="../css/main.css" >

<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("nav").load("submenu.jsp?timestamp=" + new Date().getTime());
	});
</script>
</head>

<body>
	<header>
		<div class="wrap"></div>
	</header>
	<section>
		<div class="wrap">
			<nav></nav>
			<article></article>
		</div>
	</section>
	<footer>
		
	</footer>
</body>
</html>