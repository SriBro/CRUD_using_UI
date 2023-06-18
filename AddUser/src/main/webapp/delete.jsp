<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
<title>Delete Data</title>
<style>
body{
background-color:#FF8C00;
font-family:'Ubuntu',sans-serif;
}
#delete{
background-color:yellow; 
color:black; 
font-size:20px;
cursor:pointer;
border-radius:3px;
}
#delete:hover{
background-color:black;
color:yellow;
border:2px solid yellow;
}
</style>
</head>
<body>
<form action="LoginController2" method="post">
<h2>Enter id to delete: </h2>
<input type="text" name="id2"><br><br>
<input id="delete" type="submit" value="delete">
</form>
</body>
</html>