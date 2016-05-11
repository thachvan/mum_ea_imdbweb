<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<h1 align="center">IMDB</h1>

		<form role="form" action="search">
			<div class="form-group">
				<label>Name</label> <input name="name" class="form-control"
					type="text" placeholder="Movie name" maxlength="256"
					value="Chicago">
			</div>
			<div class="form-group">
				<label>Genre</label> <select name="genre" class="form-control">
					<option value="drama">Drama</option>
					<option value="action">Action</option>
				</select>
			</div>
			<div class="form-group">
				<label>Rating</label> <input name="rating" class="form-control"
					type="number" step="0.1" min="0" max="10" value="7.9" />
			</div>
			<div class="form-group">
				<label>Year</label> <input name="year" class="form-control"
					type="number" step="1" min="1900" max="2020" value="2012" />
			</div>
			<div class="form-group">
				<label>Artist</label> <input name="artist" class="form-control"
					type="text" placeholder="Artist name" maxlength="128"
					value="Taylor Kinney">
			</div>
			<div class="form-group">
				<label>Character</label> <input name="character"
					class="form-control" type="text" placeholder="Character"
					maxlength="128" value="Kelly Severide">
			</div>
			<div class="form-group">
				<label>Director</label> <input name="character" class="form-control"
					type="text" placeholder="Character" maxlength="128"
					value="Joe Chappelle">
			</div>
			<div class="form-group" align="center">
				<button type="reset" class="btn">Reset</button>
				<button type="submit" class="btn btn-default">Search</button>
			</div>
		</form>
		
		<c:forEach var="movie" items="${moviesList}">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2 class="panel-title">${movie.name}</h2>
				</div>
				<table class="table">
					<tr>
						<td>
							<img src="<%=request.getContextPath()%>${movie.poster}">
						</td>
						<td>
							<h3><b>Title: </b>${movie.name}</h3>
							<h3><b>Year: </b>${movie.year}</h3>
							<h3><b>Summary: </b>${movie.summary}</h3>
							<h3><b>Genre: </b>${movie.genre}</h3>
							<h3><b>Rating: </b>${movie.rating}</h3>
							<h3><b>Characters: </b>
								<c:forEach var="character" items="${movie.characters}">
									${character.name}<br>
								</c:forEach>
							</h3>
							<h3><b>Actors: </b>
								<c:forEach var="character" items="${movie.characters}">
									${character.actor.name}<br>
								</c:forEach>
							</h3>
							<h3><b>Directors: </b>
								<c:forEach var="director" items="${movie.directors}">
									${director.name}<br>
								</c:forEach>
							</h3>
						</td>
					</tr>
				</table>
			</div>
			<p></p>
		</c:forEach>
	</div>
</body>

</html>