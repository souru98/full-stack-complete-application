<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reimbursement</title>
<link rel="stylesheet" href="./CSS/reimbursementCSS.css">
</head>
<body>
<div class="reimbursement-container">
        <h1 class="title">Expense Reimbursement System</h1>
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
                <label for="inputLastName" class="col-sm-2 col-form-label" >Description:</label>
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
              <div>
                <div class="col-sm-10">
                  <button type="button" class="btn btn-primary" onclick="submitReimbursement()">Submit</button>
                </div>
              </div>
            </form>
        </div>
</body>
</html>