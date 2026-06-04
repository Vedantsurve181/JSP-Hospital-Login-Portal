<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emergency Admission</title>

<style>

body{
    font-family:Arial;
    background:#ffe6e6;
}

.container{
    width:450px;
    margin:40px auto;
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
    padding:12px;
    margin-top:15px;
    background:red;
    color:white;
    border:none;
    font-size:16px;
}

</style>

</head>
<body>

<div class="container">

<h2>Emergency Patient Admission</h2>

<form action="emergencylogic.jsp" method="post">

<input type="text" name="patient_name" placeholder="Patient Name" required>

<input type="number" name="age" placeholder="Age" required>

<select name="gender">
    <option>Male</option>
    <option>Female</option>
     <option>Others</option>
</select>

<input type="text" name="blood_group" placeholder="Blood Group" required>

<select name="condition_level">
    <option>Critical</option>
    <option>Serious</option>
    <option>Stable</option>
</select>

<input type="text" name="doctor_name" placeholder="Doctor Assigned" required>

<input type="text" name="ward_number" placeholder="Ward Number" required>

<input type="text" name="relative_contact" placeholder="Relative Contact" required>

<button type="submit">Admit Emergency Patient</button>

</form>

</div>

</body>
</html>
