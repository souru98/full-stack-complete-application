<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ERS Dash</title>
<link rel="stylesheet" href="./CSS/dash.css">
</head>



<body onload="getReimbursements()">
    <div class="title-dash-container">
        <h1 class="title">Expense Reimbursement System</h1>
        <div class="nav nav-container">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" onclick="logout()" href="#">Logout</a>
                </li>
            </ul>
            <div id="searchbar">
                <input id="search" type="text" placeholder="Search" onkeyup="searchTable()" style="float: right">
            </div>
        </div>
    </div>

    <div class="table-container">
        <div id="instructions">
            <h3>Welcome to the Reimbursement Portal</h3>
            <p>Here you will be able to add, view, and approve or deny all reimbursements submitted to the system.</p>
            <p>Once finished, all reimbursements will be stored and available for viewing by all users.</p>
        </div>
        <div id="financeActions" class="buttonDiv">
            <h3>Finance Manager Actions:</h3>
            <button type="button" class="btn btn-primary buttons" data-toggle="modal" data-target="#submitReimbursement">Submit Reimbursement</button>
            <button type="button" class="btn btn-primary buttons" data-toggle="modal" data-target="#statuses">Approve/Deny</button>
            <button type="button" class="btn btn-primary buttons" data-toggle="modal" data-target="#register">Register User</button>
        </div>

        <div>
            <table class="table" border=1>
                <thead class='thead-dark'>
                    <tr>
                        <th>ID</th>
                        <th>Amount</th>
                        <th>Time Submitted</th>
                        <th>Time Resolved</th>
                        <th>Description</th>
                        <th>Author</th>
                        <th>Resolver</th>
                        <th>Status</th>
                        <th>Type</th>
                    </tr>
                </thead>
                <tbody id="table">
                </tbody>
            </table>
        </div>

        <div class="modal fade" id="statuses" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Approve/Deny Reimbursement</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <label>Reimbursement ID</label>
                            <input type="number" id="reimbId">
                            <div class="form-group col-md-4">
                                <label for="inputState">User Type:</label>
                                <select id="status" class="form-control">
                                    <option selected>Choose...</option>
                                    <option>Approve</option>
                                    <option>Deny</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="approveDeny()">Submit</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="submitReimbursement" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Submit Reimbursement</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group row">
                                <div>
                                    <label for="inputFirstName" class="col-sm-2 col-form-label">Amount:</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" id="amount" placeholder="How much?">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div>
                                    <label for="inputLastName" class="col-sm-2 col-form-label">Description:</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="description" placeholder="Describe Reimbursement">
                                </div>
                            </div>
                            <div class="form-group col-md-4">
                                <div>
                                    <label for="inputState">Reimbursement Type:</label>
                                </div>
                                <select id="type" class="form-control">
                                    <option selected>Choose...</option>
                                    <option>Food</option>
                                    <option>Lodging</option>
                                    <option>Travel</option>
                                    <option>Other</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="submitReimbursement()">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group row">
                            <label for="inputFirstName" class="col-sm-2 col-form-label">First Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="firstnameR" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputLastName" class="col-sm-2 col-form-label">Last Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="lastnameR" placeholder="Last Name">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputUsername" class="col-sm-2 col-form-label">Username</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="usernameR" placeholder="Username">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="passwordR" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="emailR" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">User Type:</label>
                            <select id="roleR" class="form-control">
                                <option selected>Choose...</option>
                                <option>Employee</option>
                                <option>Finance Manager</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="register()">Submit</button>
                </div>
            </div>
        </div>
    </div>

    
</body>
</html>