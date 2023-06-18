<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
<title>Data entered successfully</title>
<style>
body{
background-color:#FF8C00;
font-family:'Ubuntu',sans-serif;
}
table,th,td{
border: 2px solid black;
border-collapse: collapse;
padding:20px;
width:100px;
background-color:#203cfd;
color:white;
}
#goback{
background-color:yellow; 
color:black; 
font-size:20px;
cursor:pointer;
border-radius:3px;
}
#goback:hover{
background-color:black;
color:yellow;
border:2px solid yellow;
}
</style>
</head>
<body>
    <table>
        <tr>
        	<th>id</th>
            <th>Name</th>
        </tr>
        <%@ page import="java.sql.*" %>
        <%  
            String url = "jdbc:mysql://localhost:3306/adduser";
            String username = "root";
            String password = "sri08#fitness";
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, username, password);
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM user");
                while (rs.next()) {
                	int id = rs.getInt("id");
                    String name = rs.getString("name");
                    out.println("<tr><td>" + id + "</td><td>"+ name +"</td></tr>");
                }
                out.println("<br><br>");
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <form action="login.jsp">
        <input id="goback" type="submit" value="go back">        
    </form>
</body>
</html>
