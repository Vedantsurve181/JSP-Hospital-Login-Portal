<%@ page import="java.sql.*" %>

<%

String name = request.getParameter("name");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String disease = request.getParameter("disease");
String contact = request.getParameter("contact");

Connection con = null;
PreparedStatement ps = null;

try{

    Class.forName("com.mysql.cj.jdbc.Driver");

    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/hospital",
        "root",
        "1234"
    );

    String query = "INSERT INTO hosp(name,age,gender,disease,contact) VALUES(?,?,?,?,?)";

    ps = con.prepareStatement(query);

    ps.setString(1,name);
    ps.setInt(2,Integer.parseInt(age));
    ps.setString(3,gender);
    ps.setString(4,disease);
    ps.setString(5,contact);

    int i = ps.executeUpdate();

    if(i > 0){
%>

        <h2>Patient Registered Successfully!</h2>

<%
    }
    else{
%>

        <h2>Registration Failed!</h2>

<%
    }

}catch(Exception e){
    out.println(e);
}

%>
