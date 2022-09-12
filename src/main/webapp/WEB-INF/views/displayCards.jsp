<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
  
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>Books List</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        .mainBody {
            background-color: white;
        }
        .mainContainer {
            display: grid;
            grid-template-columns: auto auto auto;
            text-align: center;
            
        }

        .myCard {
            border: 2px solid grey;
            border-radius: 10px;
            margin: 3vh;
            padding: 2vh;
            column-count: 3;
            background-color: grey;
            background-image: url("https://st2.depositphotos.com/3008028/5542/i/950/depositphotos_55426393-stock-photo-light-grey-background.jpg");
            position: unset;
        }

        .card-size {
            font-size: large;
            font-weight: bold;
        }


        .heading {
            font-weight: bold;
            color: #AEB6BF;
            text-shadow: 1px 1px 2px black, 0 0 2px grey;
            text-align: center;
            font-size: 250%;
        }

        .aProp {
            text-decoration: none;
            font-weight: bold;
            padding: 3px;
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

        .book {
            right: 70px;
            bottom: 40px
        }
    </style>
</head>

<body class="mainBody">
    <br><br><br>
    <div class="container">

        <h1 class="heading">List of Books</h1>

        <br>
        <div align="center" class="mainContainer">

            <c:forEach var="book" items="${books}">

                <div class="card myCard" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title card-size">${book.title}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">${book.author }</h6>
                        <span class="card-text"> <strong>Price:</strong> Rs. ${book.price }</span>
                        <p class="card-text"> <strong>Quantity:</strong> ${book.qty}</p>
                        <a href="updateForm?id=${book.id}" class="card-link edit aProp">Edit</a>
                        <a href="deleteRecord?id=${book.id}"
                            onclick="if (!(confirm('Do you really want to delete this book record?'))) return false"
                            class="card-link delete aProp">Delete</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>

</html>