<%@ page import="java.sql.*" %>

<%

String patient_name = request.getParameter("patient_name");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String blood_group = request.getParameter("blood_group");
String condition_level = request.getParameter("condition_level");
String doctor_name = request.getParameter("doctor_name");
String ward_number = request.getParameter("ward_number");
String relative_contact = request.getParameter("relative_contact");

try{

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/hospital",
        "root",
        "1234"
    );

    String query = "INSERT INTO emergency_patients(patient_name, age, gender, blood_group, condition_level, doctor_name, ward_number, relative_contact) VALUES(?,?,?,?,?,?,?,?)";

    PreparedStatement ps = con.prepareStatement(query);

    ps.setString(1, patient_name);
    ps.setInt(2, Integer.parseInt(age));
    ps.setString(3, gender);
    ps.setString(4, blood_group);
    ps.setString(5, condition_level);
    ps.setString(6, doctor_name);
    ps.setString(7, ward_number);
    ps.setString(8, relative_contact);

    int i = ps.executeUpdate();

    if(i > 0){
%>

        <h2>Emergency Patient Admitted Successfully!</h2>

<%
    } else {
%>

        <h2>Admission Failed!</h2>

<%
    }

}catch(Exception e){

    out.println(e);
}

%>
