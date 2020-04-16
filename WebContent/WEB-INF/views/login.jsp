<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="./CSS/dash.css">
</head>
<body>
<div class="title-container">
        <h1 class="title">Expense Reimbursement System</h1>
        <div class="login-container">
            <form action="${pageContext.request.contextPath}/login" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Username</label>
                    <input type="text" class="form-control" id="username" aria-describedby="emailHelp" name="email" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <a class="forgot-password" href="">Forgot Password</a>
            </form>
        </div>
    </div>


    </body>
</body>
</html>




