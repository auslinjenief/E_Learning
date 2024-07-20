<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>

<% 
       if(request.getParameter("submit")!=null)
       {
       String name = request.getParameter("name");
       String password = request.getParameter("password");
     
       if(name.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin"))
       {
//           %><script>alert("Welcome Admin....!!!!!");</script><%
               response.sendRedirect("dashboard.jsp");
       }
       else
          {
//            %><script>alert("Incorrect name or password");</script><%
                response.sendRedirect("admin.jsp");
           }
       }
            
%>


<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Sign up / Login Form</title>
  <link rel="stylesheet" href="css/style1.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" 
          referrerpolicy="no-referrer" />

</head>
<body>
<!-- partial:index.partial.html -->
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="slide navbar style.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="Login">
				<form method="post">
					<label for="chk" aria-hidden="true">Login</label>
					
                                        <input type="text" name="name" placeholder="Name" required="">
                                        <input type="password" name="password" placeholder="Password" required="">
                                        <button type="submit" name="submit">Login</button>
				</form>
			</div>

<!--			<div class="Sign up">
				<form>
					<label for="chk" aria-hidden="true">Sign up</label>
					<input type="text" name="txt" placeholder="User name" required="">
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<button>Sign up</button>
				</form>-->
			</div>
	</div>
</body>
</html>
<!-- partial -->
  
</body>
</html>
