<%--
  Created by IntelliJ IDEA.
  User: ELOHOME LTD
  Date: 5/16/2023
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param name="title" value="Create User" /></jsp:include>

<style>
  body {
    background-color: #f2f2f2;
    font-family: "Times New Roman";
  }

  #middle {
    background-color: white;
    padding: 20px;
    margin: 0 auto;
    max-width: 500px;
  }

  input[type="text"], input[type="number"] {
    box-sizing: border-box;
    width: 93%;
    padding: 10px;
    margin-bottom: 20px;
    border: none;
    border-radius: 5px;
    background-color: #f2f2f2;
    color: #333333;
    font-size: 16px;
    box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    font-family: "Times New Roman";
  }

  input[type="submit"] {
    background-color: #759aea;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 4px;
  }
</style>

<div id="middle">
  <h2 style="text-align: left;"><b>Enter User Details</b></h2>

  <c:if test="${message != null}">
    <fieldset>
      <h3><span style="color: red"> ${message}</span></h3>
    </fieldset>
  </c:if>

  <form action="createmark.php?page=createmark" method="post">
    <table>
      <tr>
        <td align="right"><b><t:field mandatory="yes" text="Student Name"></t:field></b></td>
        <td align="left"><input type="text" size="25" maxlength="50" name="studentname" id="studentname" /></td>
      </tr>
      <tr>
        <td align="right"><b><t:field mandatory="yes" text="Subject"></t:field></b></td>
        <td align="left"><input type="text" size="25" maxlength="50" name="subject" id="subject" /></td>
      </tr>
      <tr>
        <td align="right"><b>Marks in above subject</b></td>
        <td align="left"><input type="number" size="50" maxlength="50" name="marksobtained" id="marksobtained" /></td>
      </tr>
      <tr>
        <td align="right">&nbsp;</td>
        <td align="left"><input type="submit" name="saveDataMarks" value="Submit Marks" /></td>
      </tr>

    </table>
    <a href="listmarks.php?page=marks&&action=list" style="color: #759aea">All Marks </a>
  </form>
</div>

<%@ include file="footer.jsp"%>
``
