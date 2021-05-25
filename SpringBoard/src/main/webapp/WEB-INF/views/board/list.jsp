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
		<style>
		.table-wrapper {overflow-x:hidden !important;}
			select{width: 25%;display: inline;}
			input[name='keyword']{width: 54%; display: inline;}
			.search{width: 20%;}
		</style>
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

		<!-- Main -->
			<div class="table-wrapper">
				<table class="alt">
					<thead>
						<tr>
							<th class="bno">번호</th>
							<th class="title">제목</th>
							<th class="writer">작성자</th>
							<th class="regDate">작성일</th>
							<th class="updateDate">수정일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="board" items="${list}">
							<tr>
								<td class="bno">${board.bno}</td>
								<td class="title"><a href="/board/get${pageMaker.cri.getListLink()}$bno=${board.bno}">${board.title}</a></td>
								<td class="writer">${board.writer}</td>
								<td class="regDate">${board.regDate}</td>
								<td class="updateDate">${board.updateDate}</td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
			</div>


			<form action="/board/list" id="searchForm">
				<div class="fields">
					<div class="field">
						<div style="text-align:center">
							<select name="type">
								<option value="" ${pageMaker.cri.type == null ? 'selected' : ''}>검색 기준</option>
								<option value="T" ${pageMaker.cri.type == 'T' ? 'selected' : ''}>제목</option>
								<option value="C" ${pageMaker.cri.type == 'C' ? 'selected' : ''}>내용</option>
								<option value="W" ${pageMaker.cri.type == 'W' ? 'selected' : ''}>작성자</option>
								<option value="TC" ${pageMaker.cri.type == 'TC' ? 'selected' : ''}>제목 또는 내용</option>
								<option value="TW" ${pageMaker.cri.type == 'TW' ? 'selected' : ''}>제목 또는 작성자</option>
								<option value="TCW" ${pageMaker.cri.type == 'TCW' ? 'selected' : ''}>전체</option>
							</select>
							<input id="keyword" type="text" name="keyword" value="${pageMaker.cri.keyword}">
							<a href="javascript:void(0)" class="search button primary icon solid fa-search">검색</a>
						</div>
					</div>
				</div>
			</form>
			<div class="big-width" style="text-align:center;">
				<c:if test="${pageMaker.prev}">
					<a class="changePage" href="${1}"><code>&lt;&lt;</code></a>
					<a class="changePage" href="${pageMaker.startPage - 1}"><code>&lt;</code></a>
				</c:if>
				<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<c:choose>
						<c:when test="${num eq pageMaker.cri.pageNum}">
							<code>${num}</code>
						</c:when>
						<c:otherwise>
							<a class="changePage" href="${num}"><code>${num}</code></a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pageMaker.next}">
					<a class="changePage" href="${pageMaker.endPage + 1}"><code>&gt;</code></a>
					<a class="changePage" href="${pageMaker.realEnd}"><code>&gt;&gt;</code></a>
				</c:if>
			</div>


		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>
			<script>
				$("a.search").on("click",function(e){
					e.preventDefault();
					var searchForm = $("#searchForm");
					
					if(!searchForm.find("option:selected").val()){
						alert("검색 종류를 선택하세요.");
						return false;
					}
					if(!searchForm.find("input[name='keyword']").val()){
						alert("키워드를 입력하세요.");
						return false;
					}
				})
				
				$(".changePage").on("click", function(e){
			e.preventDefault();
			var actionForm = $("#actionForm");
			var pageNum = $(this).attr("href");
			actionForm.find("input[name='pageNum']").val(pageNum);
			actionForm.submit();
		})
	
		//alert("${result}");
		var result = "${result}";
		$(document).ready(function(){
			if(result == '' || isNaN(result)){
				return;
			}
			alert("게시글 " + result + "번이 등록되었습니다.")
		})
			</script>
	</body>
</html>