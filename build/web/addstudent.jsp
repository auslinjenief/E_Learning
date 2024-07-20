
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    if(request.getParameter("submit")!=null)
    {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String course = request.getParameter("course");
        String passyear = request.getParameter("passyear");
       
        try
       {
          PreparedStatement pst=null;
       
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
           System.out.println("Connection Done");
           Connection conn = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;TrustServerCertificate=true;databaseName=E_Learning","auslin","12345");                 
           
           String sql ="sp_register ?,?,?,?,?";
            pst= conn.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, password);
            pst.setString(4, course);
            pst.setString(5, passyear);
           
             int i = pst.executeUpdate();
              if (i==1)   ///fetch the data from the result set
                  {                      
                      %>
                         <script> alert("Added Successfully!!!.Welcome");</script>
                           <%
//                                response.sendRedirect("index.jsp");   
                     }
                        else
                      {
                        %>
                          <script> alert("Problem in adding user.");</script>
                            <%
                        }
            
        }
        catch(Exception e){
            out.print(e);
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
    <title>eLEARNING - eLearning HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="form.css">
        
    </head>
    <body>
         <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="dashboard.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>Add Student</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                
                </div>
                 <a href="dashboard.jsp" class="nav-item nav-link active">Dashboard</a>
                 <a href="addstudent.jsp" class="nav-item nav-link">Add</a>
                 <a href="fetchstudent.jsp" class="nav-item nav-link">Fetch</a>
                 <a href="update.jsp" class="nav-item nav-link active">Update</a>
                 <a href="delete.jsp" class="nav-item nav-link active">Delete</a>
            </div>
            <a href="admin.jsp" class=" py-3 px-lg-4 d-none d-lg-block">Logout<i class="fa-solid fa-right-from-bracket fa-flip fa-xl" style="color: #ff0000;"></i></a>
    </nav>
    <!-- Navbar End -->
    
<div style="margin-top: 50px">
  <div class="container" style="width: 650px;">            
      <form method="post" action="#">
    <div class="mb-3">
        <label for="exampleInputText1" class="form-label">User Name:</label>
        <input type="text" class="form-control" id="exampleInputText1" placeholder="Enter your name" name="name" id="name" required>
     </div>
        <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label" name="email" id="email" placeholder="Enter your email">Email :</label>
        <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Enter your email" name="email" id="email" required>
    </div>
        <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label"  placeholder="Enter your password">Password :</label>
        <input type="password" class="form-control" id="exampleInputPassword1"name="password" id="password" required>
    </div>
     <div class="mb-3">
        <label for="exampleInputText1" class="form-label">Course :</label>
        <input type="text" class="form-control" id="exampleInputText1" placeholder="Java/.Net/Python/Php" name="course" id="course" required>
    </div>
        <div class="mb-3">
        <label for="exampleInputText1" class="form-label">Passout year:</label>
    <input type="text" class="form-control" id="exampleInputText1" placeholder="Eg :yyyy"name="passyear" id="passyear" required>
    </div>
          <button type="submit" class="btn btn-primary" value="submit" name="submit">Submit</button>
    </form>
      <br><br><br> 
  </div>
    </div>
        
    </body>
</html>
