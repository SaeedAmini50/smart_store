<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%

String customer_email=request.getParameter("customer_email");
String customer_phone=request.getParameter("customer_phone");
String Security_Question=request.getParameter("Security_Question");
String customer_answer=request.getParameter("customer_answer");
String new_password=request.getParameter("new_password");

int check=0;

try{


Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where customer_email='"+customer_email+"' and customer_phone='"+customer_phone+"' and Security_Question='"+Security_Question+"' and customer_answer='"+customer_answer+"';");
 
while(rs.next()){
	check = 1;
	st.executeUpdate("update customer set customer_password='"+new_password+"' where customer_email='"+customer_email+"'; ");
	response.sendRedirect("forgotpassword.jsp?msg=done");
}
if (check==0){
	
	response.sendRedirect("forgotpassword.jsp?msg=invalid");
}

 
}
catch(Exception e)  {
	System.out.print(e);
	
}

%>