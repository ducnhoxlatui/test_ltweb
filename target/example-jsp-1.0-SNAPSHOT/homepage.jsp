
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 16/10/2021
  Time: 3:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>

<%--    <button><a href="<c:url value="/index.jsp"/>">Emai List</a></button>--%>
<%--    <button><a href="<c:url value="/shoppingcard.jsp"/>">List Music</a></button>--%>
<%--    <button><a href="<c:url value="/index_cart"/>">Shopping Cart</a></button>--%>
<%--    <button><a href="<c:url value="/survey.jsp"/>">Survey</a></button>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<style>
    .center {
        margin: auto;
        width: 60%;
        border: 3px solid #73AD21;
        padding: 10px;
    }
</style>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<header class="w3-container w3-teal">
    <h1 class="center">Homepage</h1>
</header>

<div class="center">

    <form class="w3-container w3-card-4" >
        <h1 style="text-align: center">This is the Index page, where you will choose the page that you want to go</h1>
            <label> Email List:</label>
            <button><a href="<c:url value="/index.jsp"/>">Click here</a></button><br>
            <label>List Music:</label>
            <button><a href="<c:url value="/shoppingcard.jsp"/>">Click here</a></button><br>
            <label>Shopping Cart:</label>
            <button><a href="<c:url value="/index_cart"/>">Click here</a></button><br>
            <label>Survey:</label>
            <button><a href="<c:url value="/survey.jsp"/>">Click here</a></button><br>
            <label>SQL GateWay:</label>
            <button><a href="<c:url value="/indexSQL.jsp"/>">Click here</a></button>

    </form>

</div>

</body>
</html>
