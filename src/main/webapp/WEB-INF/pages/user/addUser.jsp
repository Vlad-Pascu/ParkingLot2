<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add User">
    <h1>Add User</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Users/Create">
        <div class="col-6">
            <label for="username" class="form-label">Username</label>
                <div class="input-group has-validation">
                    <input type="text" class="form-control" id="username" name="username" placeholder="" value="" required>
                    <div class="invalid-feedback">
                          Username is required.
                    </div>
                </div>
        </div>

        <div class="col-6">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Email is required.
                </div>
        </div>
        
         <div class="col-6">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Password is required.
                </div>
        </div>

        <div class="col-md-6">
            <label for="position" class="form-label">Position</label>
            <select class="form-select" id="position" name ="position" required>
                <option value="">Choose...</option>
                <option value="ADMINISTRATOR">Administrator</option>
                <option value="CLIENT">Client</option>
            </select>
                <div class="invalid-feedback">
                    Please select a position.
                </div>
            <hr class="my-4">
            <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>
        </div>
    </form>
</t:pageTemplate>
