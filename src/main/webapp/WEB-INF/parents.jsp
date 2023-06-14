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
        #middle form {
            margin-top: 20px;
        }

        .search {
            text-align: right;
            padding-top: 16px;
        }

        .search input[type="text"] {
            width: 200px;
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #dddddd;
        }
        .search input[type="submit"] {
            padding: 5px 10px;
            border-radius: 5px;
            border: none;
            background-color: #29375A;
            color: #ffffff;
            cursor: pointer;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            border: 1px solid #dddddd;
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
    </style>

    <title>Student Registrations</title>
</head>
<body>
<div id="layout" class="container" style="padding-top: 16px; ">
    <div id="banner">
        <div class="bannerlogo"></div>
        <div class="left" style="text-align: left; ">
            <%@ include file="menu.jsp"%>
        </div>

        <div class="right" style="text-align: right; ">
            <c:if test="${authenticatedUser !=null}">
                <a href="createparent.php?page=createparent"><button class="btn btn-link">
                    New Student Registration
                </button></a>
                <b> <a
                        href="listparents.php?page=profile&&id=${authenticatedUser.id}"><button class="btn btn-link">Profile
                </button></a> | ${authenticatedUser.userRole}:
                        ${authenticatedUser.username}</font> | <a href="login.ap?page=logout">
                        Logout</a>
                </b>
            </c:if>
            <c:if test="${authenticatedUser ==null}">
                <div class="menu" align="left">
                    | <a href="login.php?">Login</a> |
                </div>
            </c:if>
        </div>

    </div>

    <div id="middle">
        <c:if test="${authenticatedUser !=null}">

            <form action="listparents.php?page=statusapproval" method="post" class="form-group">
                <div class="search" style="text-align: right; padding-top: 16px; ">
                    <form action="listparents.php" method="get">
                        Enter Student ID
                        <input type="text" name="id" id="id" />
                        <input type='submit' name="studentregistrationsearch"
                               value='search' />

                    </form>
                </div>
                <table class="table table-bordered">
                    <thead>
                    <tr>

                        <td>Firstname</td>
                        <td>Lastname</td>
                        <td>Gender </td>
                        <td>Email</td>
                        <td>Phone Number</td>
                        <td>NID</td>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${parents}" var="prt" varStatus="prtstatus">
                        <tr>
                                <%--              <td>${prt.getId()}</td>--%>
                            <td>${prt.getFirstName()}</td>
                            <td>${prt.getLastName()}</td>
                            <td>${prt.getGender()}</td>
                            <td>${prt.getEmail()}</td>
                            <td>${prt.getPhoneNumber()}</td>
                            <td>${prt.getNid()}</td>
                                <%--                            <td><a href="editstudent.php?page=editstudent">Edit</a></td>--%>
                                <%--                            <td><a href="deleteuser.php?page=deleteuser">Delete</a></td>--%>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </c:if>
    </div>
<%@ include file="footer.jsp"%>