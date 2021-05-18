<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "twoline.OnelineDTO" %>
<%@ page import = "twoline.OnelineDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한 줄 메모장</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Permanent+Marker&display=swap');
* {
  font-family: 'Do Hyeon', sans-serif;
}
body {
  text-align: center;
}
div {
  padding: 10px;
  margin-bottom: 8px; 
}
#box {
	 width: 400px;
	 height: 25px;
	 text-align: left;
	 font-size: 18px;
	 border: solid black 2px;
}
#button {
	height: 25px;
	background-color: #B2CCFF;
	border: dashed black 2px;
}
#button:hover{
	height: 25px;
	background-color: black;
	color: white;
	border: solid black 2px;
}
#del {
	height: 25px;
	background-color: #B2CCFF;
	border: dashed black 2px;
}
#del:hover{
	height: 25px;
	background-color: black;
	color: white;
	border: solid black 2px;
}
#heading {
  width: 80%;
  height: 100px;
  font-size: 50px;
  line-height: 100px;
  background-image: url(https://images.pexels.com/photos/2499413/pexels-photo-2499413.jpeg?cs=srgb&dl=pexels-andre-moura-2499413.jpg&fm=jpg);
  color: white;
  text-align: center;
  margin: 20px auto;
  font-family: 'Permanent Marker', cursive;
  letter-spacing: 0.3em;
}
#container {
  width: 650px;
  border: none;
  margin: 0 auto;
}
#contents {
	width: 600px;
	text-align: left;
	margin: 0 auto;
}
#contents input {
	float: right;
}
p {
	height: 25px;
}
p:hover {
	background-color: #D9E5FF;
}
</style>
<%
	OnelineDAO dao = new OnelineDAO();
	ArrayList<OnelineDTO> dtos = dao.getList();
%>
<body>

<h1 id = "heading">To do List</h1>

<form method="post" action="memo_write.jsp">
<div id="container">
	<div>
		<input id="box" type="text" name="memo"></input>
		<input id="button" type="submit" value="✿"></input>
	</div>
</div>
</form>
<div id="contents">
<%
	for(int i = 0; i < dtos.size() ; i++) {
		OnelineDTO dto = dtos.get(i);
		out.println("<p>(" + dto.getWdate() + ") " + dto.getMemo() + 
				"<input id=\"del\" type=\"button\" value=\" X_X \" onClick=\"location.href='memo_delete.jsp?no=" + dto.getNo() + "'\"><br>");
		out.println("</input></p>");
	}
%>
</div>
</body>
</html>