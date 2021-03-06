<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="./CSS/registerCSS.css">
</head>
<body>
<div class="register-container">
        <h1 class="title">Expense Reimbursement System</h1>
            <form>
                <div class="form-group row">
                <label for="inputFirstName" class="col-sm-2 col-form-label">First Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="firstname" placeholder="First Name">
                </div>
              </div>
                <div class="form-group row">
                <label for="inputLastName" class="col-sm-2 col-form-label">Last Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="lastname" placeholder="Last Name">
                </div>
              </div>
                <div class="form-group row">
                <label for="inputUsername" class="col-sm-2 col-form-label">Username</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="username" placeholder="Username">
                </div>
              </div>
              <div class="form-group row">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" id="password" placeholder="Password">
                </div>
              </div>
                <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="email" placeholder="Email">
                </div>
              </div>
              <div class="form-group col-md-4">
                  <label for="inputState">User Type:</label>
                  <select id="role" class="form-control">
                    <option selected>Choose...</option>
                    <option>Employee</option>
                    <option>Finance Manager</option>
                  </select>
                </div>
              <div class="form-group row">
                <div class="col-sm-10">
                  <button type="button" class="btn btn-primary" onclick="register()">Register</button>
                </div>
              </div>
            </form>
        </div>
</body>
</html>




