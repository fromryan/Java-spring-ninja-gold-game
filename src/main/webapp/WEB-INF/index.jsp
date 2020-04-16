<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ninja Gold</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
* {
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.find-gold {
	text-align: center;
	display: inline-block;
	margin: 0 auto;
}
.find-gold div {
	display: inline-block;
	border: 2px solid grey;
	border-radius: 5px;
	box-shadow: 10px 10px 8px #888888;
	padding: 10px;
	margin: 10px;
}
</style>
</head>


<body>

<h1>Ninja Gold Game</h1>

<h3>Your Gold: <c:out value="${myGold}"/></h3>
<div class="find-gold">
	<div>
		<form method="POST" action="/addinggold">
		<h3>Farm</h3>
		<h5>(earns 10-20 gold)</h5>
		<input type="hidden" name="action" value="farm">
		<input class="btn btn-secondary btn-md" type="submit" value="Find Gold!">
		</form>
	</div>
	<div>
		<form method="POST" action="/addinggold">
		<h3>Cave</h3>
		<h5>(earns 5-10 gold)</h5>
		<input type="hidden" name="action" value="cave">
		<input class="btn btn-secondary btn-md" type="submit" value="Find Gold!">
		</form>
	</div>
	<div>
		<form method="POST" action="/addinggold">
		<h3>House</h3>
		<h5>(earns 2-5 gold)</h5>
		<input type="hidden" name="action" value="house">
		<input class="btn btn-secondary btn-md" type="submit" value="Find Gold!">
		</form>
	</div>
	<div>
		<form method="POST" action="/addinggold">
		<h3>Casino</h3>
		<h5>(earns/takes 0-50 gold)</h5>
		<input type="hidden" name="action" value="casino">
		<input class="btn btn-secondary btn-md" type="submit" value="Find Gold!">
		</form>
	</div>
</div>


</body>
</html>