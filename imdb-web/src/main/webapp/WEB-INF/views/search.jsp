<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IMDB - EA project</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
</head>

<body>
	<div class="container">
		<h1 align="center">IMDB - Search result</h1>
		<p><%= pageContext.findAttribute("name") %></p>
		<c:forEach var="movie" items="${moviesList}">
			<p>${movie.name}</p>
		</c:forEach>
	</div>
</body>

</html>