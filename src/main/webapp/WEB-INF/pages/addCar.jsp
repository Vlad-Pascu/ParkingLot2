<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add Car">
    <h1>Add Car</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
        <div class="col-6">
            <label for="licensePlate" class="form-label">License Plate</label>
                <div class="input-group has-validation">
                    <input type="text" class="form-control" id="licensePlate" name="licensePlate" placeholder="licensePlate" required>
                    <div class="invalid-feedback">
                          Your license plate is required.
                    </div>
                </div>
        </div>

        <div class="col-6">
            <label for="parkingSpot" class="form-label">Parking Spot<span class="text-muted">(Optional)</span></label>
                <input type="text" class="form-control" id="parkingSpot" name="parkingSpot" placeholder="parkingSpot">
                <div class="invalid-feedback">
                    Please enter a parking spot.
                </div>
        </div>

        <div class="col-md-5">
            <label for="userId" class="form-label">Owner</label>
            <select class="form-select" id="userId" name ="userId" required>
                <option value="">Choose...</option>
                <c:forEach var="user" items="${users}" varStatus="status">
                    <option value="${user.id}">${user.username}</option>
                </c:forEach>
            </select>
                <div class="invalid-feedback">
                    Please select a valid owner.
                </div>
            <hr class="my-4">
            <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>
        </div>
    </form>
</t:pageTemplate>
