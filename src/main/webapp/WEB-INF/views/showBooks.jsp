<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <style>
        .mainBody {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            padding: 0;
            margin: 0;
        }
        
        .ml{
            margin-left: 2.5rem;      
        }
        
        .font-weight-bold{
            font-weight: bold;
        }
        
        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 10 20px;
            width: 30%;
            margin-left: 30rem;
            margin-bottom: 3vw;

        }
        
        a{
            text-decoration: none;
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
            width: 80%;
            margin: 0 20vh;
        }
        
        .prop {
            text-decoration: none;
            font-weight: bold;
        }

        .edit {
            color: green;
        }

        .delete {
            color: red;
            padding-left: 10px;
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

   
  <title>ID Entry</title>
</head>

<body>
    <form:form action="searchForm" method="get" modelAttribute="book">
        <br>
        <div class="container">
            <form:input type="text" placeholder="Enter book name" path="title"/>
            <a href="searchForm?title=${book.title}"><button type="submit" class="submitbtn"><i class="fa fa-search"></i></button></a>
        </div>
    </form:form>
    
   <div class="row">
      <div class="col-2">
          <h2 class="ml">Filter</h2>
          
          <!-- Filter by category -->
          <form:form action="filterByCategory" method="post" modelAttribute="book">
          <label class="font-weight-bold ml">By Category </label><br>
               <form:select path="bookCategory" class="ml">
                   <form:options items="${book.categoryOptions }"/>
               </form:select>
           <form:errors path="bookCategory" cssClass="error"/> <br> <br>
           
           <a href="searchForm?bookCategory=${book.bookCategory}" class="ml">
               <button type="submit" class="submitbtn">Filter</button>
           </a>
     
           </form:form>
           
           <!-- Filter by price -->
           
          
      </div>

      <div class="col-10">
      
		   <h1 class="textHeading">Book List</h1>
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
		                        <a href="updateForm?id=${book.id}" class="edit prop">--Edit--</a>
		                        <a href="deleteRecord?id=${book.id}"
		                            onclick="if (!(confirm('Do you really want to delete this book record?'))) return false"
		                            class="delete prop">--Delete--</a>
		                    </td>
		                </tr>
		            </c:forEach>
		        </table>
		        <br><br>
		    </div>
		</div>  
		
	</div>
</body>
</html>