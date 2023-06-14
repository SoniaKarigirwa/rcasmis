<%--
  Created by IntelliJ IDEA.
  User: Elohome ltd
  Date: 4/22/2023
  Time: 7:00 PM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" href="cssfile.css" type="text/css" />
  <link rel="stylesheet" href="css/displaytag.css" type="text/css" />
  <link rel="stylesheet" href="css/screen.css" type="text/css" />
  <link rel="stylesheet" href="css/site.css" type="text/css" />
  <style>

    /* Add your custom styles here */
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    #layout {
      padding-top: 16px;
    }

    #banner {
      background-color: #29375A;
      color: #ffffff;
      padding: 10px;
      display: flex;
      align-items: center;
    }

    .text_header {
      margin-left: 10px;
      font-size: 18px;
    }

    .right {
      text-align: right;
    }

    .right a {
      color: #ffffff;
      text-decoration: none;
    }

    .menu {
      margin-left: 10px;
    }

    #middle {
      margin-top: 20px;
    }

    .options button {
      background-color: #759aea;
      color: #ffffff;
      padding: 10px 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 5px;
    }

    .search table {
      margin-bottom: 10px;
    }

    .search input[type="text"] {
      width: 200px;
      padding: 5px;
      border-radius: 5px;
      border: 1px solid #dddddd;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }



    th {
      background-color: #f2f2f2;
    }

    tbody tr:nth-child(even) {
      background-color: #f7f7f7;
    }

    tbody tr:hover {
      background-color: #e2e2e2;
    }
    td, th {
      border: 1px solid black ;
      text-align: left;
      padding: 8px;
    }

    thead{
      background-color: #759aea;
      color: white;
      font-family: "Times New Roman";
      font-weight: bold;
    }

  </style>
  <title>Course Registrations</title>
</head>
<body>
<div id="layout">
  <div id="banner">
    <div class="bannerlogo"></div>
    <div class="text_header">RCA Management Information System</div>
    <div class="right" style="text-align: right;">
      <c:if test="${authenticatedUser !=null}">
        <b> <a
                href="listuser.php?page=profile&&id=${authenticatedUser.id}"><button>Profile
        </button></a> | <img src="icons/user.png" /> <font color="#ffffff">${authenticatedUser.userRole}:
            ${authenticatedUser.username}</font> | <a href="login.ap?page=logout"><font
                color="#ffffff">Logout</font></a>
        </b>
      </c:if>
      <c:if test="${authenticatedUser ==null}">
        <div class="menu" align="left">
          | <a href="login.php?">Login</a> |
        </div>
      </c:if>
    </div>
  </div>
  <div>
    <%@ include file="menu.jsp"%>
  </div>
  <div id="middle">
    <c:if test="${authenticatedUser !=null}">
      <div class="options">

        <a href="createmark.php?page=createmark"><button>
          <img src="icons/user_add.png" /> Add marks
        </button></a>
      </div>
      <div class="search">
        <form action="listuser.php" method="get">
          <table>
            <tr>
              <td style="color: #000000;">Enter User ID</td>
              <td><input type="text" name="id" id="id" /></td>
              <td><input type=le'submit' name="userregistrationsearch"
                         value='search' /></td>
            </tr>
          </table>
        </form>
      </div>
      <hr />


      <table style="border: 0;">

        <td align="left"><input type="text" size="15"
                                maxlength="50" readonly="readonly" name="savedBy" id="savedBy"
                                hidden="hidden" value="${authenticatedUser.id}" /></td>

          <%--                            <td><select name="userRole" id="userRole">--%>
          <%--                                <option selected="selected" value="NONE">Select Role</option>--%>
          <%--                                <c:forEach items="${userRoles}" var="usrRole"--%>
          <%--                                           varStatus="usrRolestatus">--%>
          <%--                                    <option value="${usrRole}">--%>
          <%--                                        <c:out value="${usrRole.getRoleDescription()}" />--%>
          <%--                                    </option>--%>
          <%--                                </c:forEach>--%>
          <%--                            </select></td>--%>
          <%--                            <td align="right"><input type="submit"--%>
          <%--                                                     name="saveCourseStatus" value="Save Status" /></td>--%>



        <table>
          <thead>
          <tr>

            <td>Student Name</td>
            <td>Subject</td>
            <td>Marks</td>


          </tr>
          </thead>
          <tbody>
          <c:forEach items="${marks}" var="mrk" varStatus="mrkstatus">
            <tr>
              <td>${mrk.getStudentName()}</td>
              <td>${mrk.getSubject()}</td>
              <td>${mrk.getMarksObtained()}</td>


            </tr>
          </c:forEach>
          </tbody>
        </table>
      </table>

    </c:if>
  </div>
  <%@ include file="footer.jsp"%>
