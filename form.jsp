<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Management System</title>

<style>

body{
    font-family:Arial;
    background:#f2f2f2;
}

.container{
    width:400px;
    margin:50px auto;
    background:white;
    padding:20px;
    border-radius:10px;
}

input,select{
    width:100%;
    padding:10px;
    margin-top:10px;
}

button{
    width:100%;
    padding:10px;
    margin-top:15px;
    background:green;
    color:white;
    border:none;
}

</style>

</head>
<body>

<div class="container">

<h2>Patient Registration</h2>

<form action="logic.jsp" method="post">

<input type="text" name="name" placeholder="Enter Name" required>

<input type="number" name="age" placeholder="Enter Age" required>

<select name="gender">
    <option>Male</option>
    <option>Female</option>
     <option>Others</option>
</select>

<input type="text" name="disease" placeholder="Enter Disease" required>

<input type="text" name="contact" placeholder="Enter Contact" required>

<button type="submit">Register</button>

</form>

</div>

</body>
</html>
