<%--
  Created by IntelliJ IDEA.
  User: ELOHOME LTD
  Date: 6/13/2023
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param name="title" value="Create Student" /></jsp:include>

<style>
    body {
        background-color: #f2f2f2;
    }

    #middle {
        background-color: white;
        padding: 20px;
        margin: 0 auto;
        max-width: 500px;
    }

    form {
        width: 100%;
    }

    input[type="text"], input[type="number"], input[type="date"] {
        width: 100%;
        padding: 5px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: blue;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 4px;
    }
</style>

<div id="middle">
    <h2 style="text-align: left;"><b>Enter Student Details</b></h2>

    <c:if test="${message != null}">
        <fieldset>
            <h3><span style="color: red">${message}</span></h3>
        </fieldset>
    </c:if>

    <form action="createstudent.php?page=createstudent" method="post">
        <label for="firstName"><b>Student First Name:</b></label>
        <input type="text" name="firstName" id="firstName" placeholder="Enter student's first name" required><br>

        <label for="lastName"><b>Student Last Name:</b></label>
        <input type="text" name="lastName" id="lastName" placeholder="Enter student's last name" required><br>

        <label for="gender"><b>Gender:</b></label>
        <input type="text" name="gender" id="gender" placeholder="Enter student's gender"><br>

        <label for="email"><b>Email:</b></label>
        <input type="email" name="email" id="email" placeholder="Enter student's email" required><br>

        <label for="dateOfBirth"><b>Date of Birth:</b></label>
        <input type="date" name="dateOfBirth" id="dateOfBirth" placeholder="Enter student's date of birth" required><br>

        <label for="address"><b>Address ID:</b></label>
        <input type="number" name="address" id="address" placeholder="Enter address ID"><br>

        <label for="phoneNumber"><b>Phone Number:</b></label>
        <input type="text" name="phoneNumber" id="phoneNumber" placeholder="Enter student's phone number"><br>

        <input type="submit" name="saveStd" value="Create Student">
    </form>
</div>
<%@ include file="footer.jsp"%>