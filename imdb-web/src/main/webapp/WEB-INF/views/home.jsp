<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	</div>
</body>

</html>