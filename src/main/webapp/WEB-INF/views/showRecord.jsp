<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
          
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Books List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>

        * {
            padding: 0;
            margin: 0;
        }
        
        .mainBody {
            font-family: Arial, Helvetica, sans-serif;
        }
        
        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 10 20px;
            width: 30%;
            margin-left: 60vh;
            margin-bottom: 3vw;
        }

        input {
            width: 80%;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .submitbtn {
            background-color: #1A5276;
            color: white;
            padding: 12px 16px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 2vh;
            font-size: medium;
            box-sizing: border-box;
        }

        .heading2 {
            color: white;
            text-align: center;
            font-size: large;
            background-color: #1A5276;
            width: 20%;
            padding: 10px 14px;
            border-radius: 5px;
            margin-left: 66.5vh;
        }
        
        thead>.rowing {
            font-weight: bold;
        }

        .rowing>td {
            border: 2px solid black;
            text-align: center;
            font-size: 15px;
        }

        .tabling {
            justify-content: center;
            width: 70%;
            margin: 0 20vh;
        }

        .prop {
            text-decoration: none;
            font-weight: bold;
        }

        .edit {
            color: blue;
        }

        .delete {
            color: red;
            padding-left: 15px;
            box-sizing: border-box;
        }

        .textHeading {
            font-weight: bold;
            color: #7FB3D5;
            text-shadow: 1px 1px 2px black, 0 0 5px grey;
            text-align: center;
            font-size: 300%;
        }
    </style>
</head>

<body class="mainBody">    
    
    <form:form action="searchForm" method="get" modelAttribute="book">
        <br>
        <div class="container">
            <form:input type="text" placeholder="Enter book name" path="title"/>
            <a href="searchForm?title=${book.title}"><button type="submit" class="submitbtn"><i class="fa fa-search"></i></button></a>
        </div>
    </form:form>
    
    <h1 class="textHeading">Book List</h1>

    <br>
    <div class="tabling">
        <table class=" table table-success table-striped">
            <thead>
                <tr class="rowing">
                    <td>Book Id</td>
                    <td>Title</td>
                    <td>Author</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Category</td>
                    <td>Operation</td>
                </tr>
            </thead>
            <c:forEach var="book" items="${books}">
                <tr class="rowing">
                    <td>${book.id }</td>
                    <td>${book.title }</td>
                    <td>${book.author }</td>
                    <td>${book.price }</td>
                    <td>${book.qty}</td>
                    <td>${book.bookCategory}</td>
                    <td>
                        <a href="updateForm?id=${book.id}" class="edit prop">Edit</a>
                        <a href="deleteRecord?id=${book.id}"
                            onclick="if (!(confirm('Do you really want to delete this book record?'))) return false"
                            class="delete prop">Delete</a>
                    </td>
                </tr>
                </c:forEach>


        </table>
        <br><br>
    </div>
</body>
</html>