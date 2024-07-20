<%-- 
    Document   : fetchstudent
    Created on : 18 Mar, 2024, 10:19:10 PM
    Author     : AUSLIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
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
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>Update Student</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                
                </div>
                <a href="dashboard.jsp" class="nav-item nav-link active">Dashboard</a>
                <a href="addstudent.jsp" class="nav-item nav-link active">Add</a>
                <a href="fetchstudent.jsp" class="nav-item nav-link active">Fetch</a>
                <a href="update.jsp" class="nav-item nav-link active">Update</a>
                <a href="delete.jsp" class="nav-item nav-link active">Delete</a>
            </div>
            <a href="admin.jsp" class=" py-3 px-lg-4 d-none d-lg-block">Logout<i class="fa-solid fa-right-from-bracket fa-flip fa-xl" style="color: #ff0000;"></i></a>
    </nav>
    <!-- Navbar End -->
 <div style="margin-top: 50px">   
<div class="container" width="450px">
<table class="table" class="table-dark">

    <tr>
      <th scope="col">Id</th> 
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Course</th>
      <th scope="col">Passout Year</th>
    </tr>
 
    <%
        PreparedStatement pst=null;
        
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
           System.out.println("Connection Done");
           Connection conn = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;TrustServerCertificate=true;databaseName=E_Learning","auslin","12345");                 
           
           
           String sql="exec sp_fetchstudent";
           System.out.println("sql");
           
           pst = conn.prepareStatement(sql);
           ResultSet rs = pst.executeQuery();
           while(rs.next())
           {
           String id = rs.getString("id");
            
    %>
    
    <tr>
      <td><%=rs.getString("id")%></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("email")%></td>
      <td><%=rs.getString("password")%></td>
      <td><%=rs.getString("course")%></td>
      <td><%=rs.getString("passyear")%></td>
      <td><a href="updatestudent.jsp?id=<%=id%>"><button type="submit" class="btn btn-primary" style="color: white;">Edit</button></td>
      <td><a href="deletestudent.jsp?id=<%=id%>"><button type="submit" class="btn btn-danger" style="color: white;" hidden="">Delete</button></td>
      <!--<td><a href="updatestudent.jsp?id=<%=id%>"><button type="button" class="btn btn-primary" style="color: white;"  value="button" name="button">Edit</a></button></td>-->
     <!--<td><a href="deletestudent.jsp?id=<%=id%>"><button type="button" class="btn btn-danger" style="color: white;">Delete</a></button></td>-->
    </tr> 
    <%
        }
        %>
    
</table>
</div>
 </div>
    </body>
</html>
