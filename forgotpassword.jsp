<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
    
    <%@ page import="java.sql.*" 
import="project.ConnectionProvider"
%>
    
 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Admin panel smart store</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="libAdmin/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="libAdmin/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

   <!-- Customized Bootstrap Stylesheet -->
    <link href="cssAdmin/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="cssAdmin/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class=" bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5">
                    <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <a href="indexAdmin.jsp" class="">
                                <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Smart Store</h3>
                            </a>
                            <h3>Sign In</h3>
                        </div>
					<form action="forgotpasswordAction.jsp" methed="post">
                       
                       	<div class="form-floating mb-3">
                            <input type="email" name="customer_email" class="form-control" id="floatingInput" placeholder="ایمیل آدرس " required>
                            <label for="floatingInput">ایمیل آدرس</label>
                        </div>
                        
                     	<div class="form-floating mb-3">
                            <input type="text" name="customer_phone" class="form-control" id="floatingInput" placeholder="شماره تلفن " required>
                            <label for="floatingInput">شماره تلفن</label>
                        </div>
					
                      
                      <select name="Security_Question"  >
						<option value="what was your first car?" default>what was your first car?</option>
						<option value="what is the name of your first pet?">what is the name of your first pet?</option>
						<option value="what elementary school did you attend?">what elementary school did you attend?</option>
						<option value="what is the name of the town where you were born?">what is the name of the town where you were born?</option>
					</select>
		
					<div class="form-floating mb-3">
                            <input type="text" name="customer_answer" class="form-control" id="floatingInput" placeholder="جواب خود برای سوال های بالا بنویسید" required>
                            <label for="floatingInput">جواب خود برای سوال  بالا بنویسید</label>
                        </div>
                        
                        <div class="form-floating mb-4">
                            <input type="password" name="new_password" class="form-control" id="floatingPassword" placeholder="پسورد جدید خود را وارد کنید">
                            <label for="floatingPassword"> پسورد جدید خود را وارد کنید</label>
                        </div>
                      <button type="submit" value="submit" class="btn btn-primary py-3 w-100 mb-4">save</button>
                      
                        
						</form>
                        </div>
                          <p class="text-center mb-0">من قبلا حساب درست نکردم <a href="signup.jsp">Sign Up</a></p>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Sign In End -->
    

	 <%
	 String msg=request.getParameter("msg");
         if("done".equals(msg)){  
        	 System.out.print("welcome");
        	 
        	 %>
				 <h1 >Welcome... </h1>
				 <%}%>
				 <%
				 if("invalid".equals(msg)){
					 System.out.print("soorrrry");
				 %>
				 <h1>your password or email is wrong</h1>
	<% } %>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="libAdmin/chart/chart.min.js"></script>
    <script src="libAdmin/easing/easing.min.js"></script>
    <script src="libAdmin/waypoints/waypoints.min.js"></script>
    <script src="libAdmin/owlcarousel/owl.carousel.min.js"></script>
    <script src="libAdmin/tempusdominus/js/moment.min.js"></script>
    <script src="libAdmin/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="libAdmin/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="jsAdmin/main.js"></script>
</body>

</html>