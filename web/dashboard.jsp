<%-- 
    Document   : dashboard
    Created on : 15 Mar, 2024, 4:34:11 PM
    Author     : AUSLIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    
    <link href="css/Grid.css" rel="stylesheet">

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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" 
          referrerpolicy="no-referrer" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

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
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>Admin Dashboard</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                
                </div>
                <a href="index.jsp" class="nav-item nav-link active">Index</a>
<!--                 <a href="dashboard.jsp" class="nav-item nav-link"></a>-->
            </div>
            <a href="admin.jsp" class=" py-3 px-lg-4 d-none d-lg-block">Logout<i class="fa-solid fa-right-from-bracket fa-flip fa-xl" style="color: #ff0000;"></i></a>
    </nav>
    <!-- Navbar End -->
    
         <!--Header end-->  
         <div style="margin-top: 50px">
    <div style="display: flex;flex-direction: row;justify-content: space-around;align-items: center">      
        <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-5">
        <div class="col">
            <div class="card" style="width: 18rem;">
            <img src="img/addStudent.jpeg" class="card-img-top" alt="Add Student">
            <div class="card-body">
          <h5 class="card-title">Add Students those who comes offline</h5>
          <a href="addstudent.jsp" class="btn btn-success">Add</a>
        </div>
      </div>
    </div>
  </div>
</div>

     
     <div class="container">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-5">
   
    <div class="col">
      <div class="card" style="width: 18rem;">
          <img src="img/FetchStudent.jpeg" class="card-img-top" alt="View Students">
        <div class="card-body">
          <h5 class="card-title">View the registered students</h5>
          <a href="fetchstudent.jsp" class="btn btn-warning">Fetch</a>
        </div>
      </div>
    </div>

  </div>
</div>

     
    <div class="container">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-5""> 
    <div class="col">
      <div class="card" style="width: 18rem;">
          <img src="img/update.jpeg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Update the student details</h5>
          <a href="update.jsp" class="btn btn-primary">Update</a>
        </div>
      </div>
    </div>

  </div>
</div>
      <div class="container">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-5"">
    <div class="col">
      <div class="card" style="width: 18rem;">
          <img src="img/delete.jpeg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Remove the student details</h5>
          <a href="delete.jsp" class="btn btn-danger">Delete</a>
        </div>
      </div>
    </div>
     
  </div>
      </div>
    </div>
         </div>
        
<!--<div class="container" width="450px">
<table class="table" class="table-dark">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Course</th>
      <th scope="col">Passout Year</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr> 
  </tbody>
</table>
</div>-->




    </body>
</html>   
