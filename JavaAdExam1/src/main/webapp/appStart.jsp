<%@ page import="app.GameApp"%>  <!-- game app class import hiij bga -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name"); 
    String result = "Not executed"; 

    if (name != null && !name.isEmpty()) { 
        GameApp gameApp = new GameApp(); 
        gameApp.setItem("something"); 
        result = gameApp.start(name);
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Advanced_Exercise 1</title>
<style>
body {
    border: solid 2px #000080;
    padding: 5px;
}
.result {
    background: #fffacd;
    display: inline-block;
    margin: 5px;
    padding: 10px;
}
</style>
</head>
<body>

<h1>Java Exercise 1</h1>

<h2>Java game execution page</h2>
<div class="result">
    <h3>Execution page</h3>
    <p><%= result %></p>
</div>

<form action="appStart.jsp" method="post">
    <label>User name:</label>
    <input type="text" name="name">
    <br>
    <button type="submit">execute</button>
</form>

</body>
</html>