<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<nav>
					<ul class="nav">
						<li><a href="/board/register${pageMaker.cri.getListLink()}">Write</a></li>
						
					</ul>
				</nav>
				<div id="logo">
					<a href="index.html">
						Spring<br />
						<strong>Board</strong>
					</a>
				</div>
				<nav>
					<ul class="nav">
						<li><a href="generic.html">About</a></li>
					</ul>
				</nav>
			</header>
			<div>
				<div>
					<form action="/board/register" method="post" id="regForm">
									<div class="fields">
										<div class="field">
											<h4>제목</h4>
											<input name="title" placeholder="Title" type="text" />
										</div>
										<div class="field">
											<h4>내용</h4>
											<textarea name="content" rows="6" placeholder="Content" style="resize:none"></textarea>
										</div>
										<div class="field">
											<h4>작성자</h4>
											<input name="writer" placeholder="Writer" type="text" />
										</div>
									</div>
									<ul class="actions special">
										<li><input type="submit" class="button" value="등록" /></li>
									</ul>
								</form>
				</div>
			</div>


		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>