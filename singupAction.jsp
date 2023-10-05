<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>


<%

String customer_name=request.getParameter("customer_name");
String customer_last_name=request.getParameter("customer_last_name");
String customer_phone=request.getParameter("customer_phone");
String customer_email=request.getParameter("customer_email");
String Security_Question=request.getParameter("Security_Question");
String customer_answer=request.getParameter("customer_answer");
String customer_password=request.getParameter("customer_password");
String customer_city=request.getParameter("customer_city");
String customer_address=request.getParameter("customer_address");

try{


Connection con = ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("INSERT INTO customer (customer_name,customer_last_name,customer_phone,customer_email,Security_Question,customer_answer,customer_password,customer_city,customer_address) values(?,?,?,?,?,?,?,?,?);");
ps.setString(1,customer_name);
ps.setString(2,customer_last_name);
ps.setString(3,customer_phone);
ps.setString(4,customer_email);
ps.setString(5,Security_Question);
ps.setString(6,customer_answer);
ps.setString(7,customer_password);
ps.setString(8,customer_city);
ps.setString(9,customer_address);
ps.executeUpdate();
response.sendRedirect("singup.jsp?msg=valid");

}

catch(Exception e){
System.out.print(e);
response.sendRedirect("error.jsp?msg=invalid");

}
%>
