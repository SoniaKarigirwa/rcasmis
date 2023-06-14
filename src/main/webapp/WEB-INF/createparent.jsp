<%--
  Created by IntelliJ IDEA.
  User: ELOHOME LTD
  Date: 5/17/2023
  Time: 7:14 AM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<div class="container">
    <jsp:include page="headeradmin.jsp"><jsp:param
            name="title" value="Create Parent" />
    </jsp:include>
</div>

<div id="middle">
    <h3 style="text-align: center; padding-top: 32px; ">
        <b>Enter Parent Details</b>
    </h3>
    <c:if test="${message != null}">
        <fieldset>
            <h3>
                <span style="color: red"> ${message}</span>
            </h3>
        </fieldset>
    </c:if>
    <form action="createparent.php?page=createparent" method="post" class="form-group">
        <%--        <label for="id">Student Id: </label>--%>
        <%--        <input type="number" size="25" maxlength="50"--%>
        <%--               name="id" id="id" />--%>

        <label for="firstName">Firstname: </label>
        <input type="text" size="25" maxlength="50"
               name="firstName" id="firstName" />

        <label for="lastName">Lastname: </label>
        <input type="text" size="50"
               maxlength="50" name="lastName" id="lastName"  />

        <label for="dateOfBirth">Date of Birth: </label>
        <input type="date" name="dateOfBirth" id="dateOfBirth" />

        <label for="email">Email</label>
        <input type="text" size="50" maxlength="50"
               name="email" id="email" />

        <label for="phoneNumber">Phone Number</label>
        <input type="number" size="50" maxlength="50"
               name="phoneNumber" id="phoneNumber" />

        <label>
            <input type="radio" name="gender" value="male">
            Male
        </label>

        <label>
            <input type="radio" name="gender" value="female">
            Female
        </label>
        <%--        <br>--%>
        <%--        <label>--%>
        <%--            <input type="radio" name="isInternational" id="isInternational" value="1">--%>
        <%--            International--%>
        <%--        </label>--%>

        <%--        <label>--%>
        <%--            <input type="radio" name="isInternational" id="isInternational" value="0">--%>
        <%--            Local--%>
        <%--        </label>--%>
        <br>
        <label for="nid">National id number: </label>
        <input type="number" name="nid" id="nid" class="form-control" />

        <input type="submit" name="saveStd"
               value="Register Parent" class="btn btn-primary" style="margin-top: 16px; " />

    </form>
</div>
<%@ include file="footer.jsp"%>
