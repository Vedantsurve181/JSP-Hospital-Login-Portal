<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Management System</title>

<style>

body{
    margin:0;
    padding:0;
    font-family:Arial;
    background:#f2f2f2;
}

.container{
    width:500px;
    margin:120px auto;
    background:white;
    padding:40px;
    text-align:center;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h1{
    color:#333;
    margin-bottom:40px;
}

a{
    text-decoration:none;
}

.btn{
    width:80%;
    padding:15px;
    margin:15px auto;
    display:block;
    font-size:18px;
    border:none;
    border-radius:5px;
    cursor:pointer;
    color:white;
}

.login{
    background:#007bff;
}

.emergency{
    background:red;
}

.btn:hover{
    opacity:0.9;
}

</style>

</head>
<body>

<div class="container">

<h1>Hospital Management System</h1>

<a href="form.jsp">
    <button class="btn login">
        Login
    </button>
</a>

<a href="emergency.jsp">
    <button class="btn emergency">
        Emergency Admission
    </button>
</a>

</div>

</body>
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
