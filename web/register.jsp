
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
                         <script> alert("New Student Added Successfully!!!");</script>
                           <%
                                response.sendRedirect("index.jsp");   
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
        <a href="index.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>eLEARNING</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <a href="about.jsp" class="nav-item nav-link">About</a>
                <a href="courses.jsp" class="nav-item nav-link">Courses</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="team.jsp" class="dropdown-item">Our Team</a>
                        <a href="testimonial.jsp" class="dropdown-item">Testimonial</a>
                        
                    </div>
                </div>
                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                
            </div>
            <a href="register.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Register<i class="fa fa-arrow-right ms-3"></i></a>
            <a href="admin.jsp" class="btn btn-secondary py-4 px-lg-5 d-none d-lg-block"><i class="fa fa-user" aria-hidden="true"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->
    
     <!--Header Start--> 
   <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Course Register</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">register</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
  <!--Header end--> 
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
        
    </body>
</html>
