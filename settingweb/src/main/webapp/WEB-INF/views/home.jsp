<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Home</title>
<%@include file="./common_resource.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/home.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/home.css" rel="stylesheet"/>
<!-- home.jsp에서 사용하기 위한 jsp파일, js파일, css파일을 가져온다 -->
</head>
<body>
	<h1>Hello world!</h1>
	<button id="load_movieList" type="button">영화 목록 가져오기</button>
	<table>
		<thead>
			<tr>
				<th>영화이름</th>
				<th>감독</th>
				<th>장르</th>
			</tr>
		</thead>

		<tbody id=movieList>
			<%-- <c:forEach items="${movieList }" var="movie">
				<tr>
					<td>${movie.movie_name }</td>
					<td>${movie.director }</td>
					<td>${movie.types }</td>
				</tr>

			</c:forEach> --%><!-- jstl영역을 사용하지 않도록 주석하고 tbody 태그의 id를 movieList로 한다 -->
		</tbody>
	</table>
</body>
</html>
