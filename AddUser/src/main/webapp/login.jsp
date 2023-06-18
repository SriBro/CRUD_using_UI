<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
<title>Enter Credentials</title>
<style>
body{
font-family:'Ubuntu',sans-serif; 
font-size:17px;
background-color:#FF8C00;
font-weight:bolder;

}
button{
background-color:#203cfd;
color:white;
font-size:15px;
cursor:pointer;
border-radius:3px;
}
button:hover{
background-color:white;
color:#203cfd;
}
#btn-1{
background-color:#203cfd;
color:white;
font-size:15px;
cursor:pointer;
border-radius:3px;
}
#btn-1:hover{
background-color:white;
color:#203cfd;
}
</style>
</head>
<body>
	<form action="LoginController" method="post">
	<h2>Enter your name: </h2>
	<input type="text" name="name1"><br><br>
	<input type="submit" id="btn-1" value="entry into database"><br><br>
	</form>
	<button type="button" onclick="location.href='delete.jsp'">delete record</button>	
	<button type="button" onclick="location.href='update.jsp'">update record</button>

</body>
</html>