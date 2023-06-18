<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
<title>Updating record</title>
<style>
body{
background-color:#FF8C00;
font-family:'Ubuntu',sans-serif;
}
#update{
background-color:yellow; 
color:black; 
font-size:20px;
cursor:pointer;
}
#update:hover{
background-color:black;
color:yellow;
border:2px solid yellow;
}
</style>
</head>
<body>
<form action="LoginController3" method="post">
<h2>Enter id to update: </h2>
<input type="text" name="id">
<h2>Enter updated name: </h2>
<input type="text" name="updateName"><br><br>
<input id="update" type="submit" value="update">
</form>
</body>
</html>