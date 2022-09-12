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

    <style>

        * {
            padding: 0;
            margin: 0;
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
            justify-content: "center";
            width: 70%;
            margin: 0 20vh;
        }

        .prop {
            text-decoration: none;
            font-weight: bold;
            padding: 5px;
            box-sizing: border-box;
        }

        .edit {
            color: blue;
        }
        
        .edit:hover {
            color: rgb(16, 16, 177);
            text-decoration: underline;
        }

        .delete {
            color: red;
        }
        .delete:hover {
            color: rgb(231, 14, 14);
            text-decoration: underline;
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

<body>

    <br><br><br>
    <h1 class="textHeading">List of Books</h1>

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