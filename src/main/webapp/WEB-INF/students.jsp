<%--
  Created by IntelliJ IDEA.
  User: ELOHOME LTD
  Date: 6/13/2023
  Time: 9:02 PM
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
    <title>User Registrations</title>
</head>
<body>
<div id="layout">
    <div id="banner">
        <div class="bannerlogo"></div>
        <div class="text_header">Student registrations</div>
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

                <a href="createstudent.php?page=createstudent"><button>
                    <img src="icons/user_add.png" /> New Student Registration
                </button></a>
            </div>

            <div class="search">
                <form action="liststudents.php" method="get">
                    <table>
                        <tr>
                            <td style="color: #000000;">Enter User ID</td>
                            <input type="text" name="id" id="id" />
                            <input type='submit' name="studentregistrationsearch"
                                   value='search' />
                        </tr>
                    </table>
                </form>
            </div>

            <form action="liststudents.php?page=statusapproval" method="post" class="form-group">

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <td>ID</td>
                        <td>Firstname</td>
                        <td>Lastname</td>
                        <td>Gender </td>
                        <td>Email</td>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${students}" var="std" varStatus="stdstatus">
                        <tr>
                            <td>${std.getId()}</td>
                            <td>${std.getFirstName()}</td>
                            <td>${std.getLastName()}</td>
                            <td>${std.getGender()}</td>
                            <td>${std.getEmail()}</td>
                            <td>${std.getAddress()}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </c:if>
    </div>
    <%@ include file="footer.jsp"%>






