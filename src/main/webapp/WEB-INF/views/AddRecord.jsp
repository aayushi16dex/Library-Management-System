<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
   <style>
        * {
            padding: 0;
            margin: 0;
            
        }
     
        .insertBody{
            overflow-x: hidden;
            overflow-y: hidden;
        }

        .error {
            color: red;
        }

        input, select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        .ml{
            margin-left: 2.5rem;      
        }
        
        .font-weight-bold{
            font-weight: bold;
        }

        .submitbtn {
            width: 79%;
            background-color: #1A5276;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10vh;
            font-size:large;
        }

        .submitbtn:hover {
            background-color: #2471A3;
        }

        .containerInsert {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            width: 50%;
            margin-left: 60vh;
            margin-bottom: 6vw;
        }
        
        .textHeading {
            font-weight: bold;
            color: #7FB3D5;
            text-shadow: 1px 1px 2px black, 0 0 5px grey;
            text-align: center;
            font-size: 300%;
        }
    </style>
    
  <title>Insert</title>
</head>

<body class="insertBody">
  <form:form action="processForm" method="post" modelAttribute="book">
  
      <br><br> 
      <h2 class="textHeading text-uppercase">Record Insertion</h2><br><br>

      <div class="containerInsert">
      
      <div class="row ml">      
          <div class="col-5">
               <label class="font-weight-bold">Category </label><br>
               <form:select path="bookCategory">
                   <form:options items="${book.categoryOptions }"/>
               </form:select>
               <form:errors path="bookCategory" cssClass="error"/> <br> <br>
          </div>
          
             <div class="col-1"></div>  
             
          <div class="col-5">
               <label class="font-weight-bold">Book ID</label><br>
               <form:input type="int" placeholder="Integers only" path="id"/>
               <form:errors path="id" cssClass="error"/> <br> <br>       
          </div>
      </div>
     
      
      <div class="row ml"> 
          <div class="col-5">
		      <label class="font-weight-bold">Title</label><br>
		      <form:input type="text" placeholder="Enter book title"  path="title"/>
		      <form:errors path="title" cssClass="error"/> <br> <br>
		  </div>
               
               <div class="col-1"></div> 
               
          <div class="col-5">    
		      <label class="font-weight-bold">Author</label><br>
		      <form:input type="text" placeholder="Enter book author" path="author"/>
		      <form:errors path="author" cssClass="error"/> <br> <br>
		  </div>
      </div>

      <div class="row ml"> 
          <div class="col-5">
		      <label class="font-weight-bold">Price</label><br>
		      <form:input type="float" placeholder="Enter book price" path="price"/>
		      <form:errors path="price" cssClass="error"/> <br> <br>
          </div>
          
               <div class="col-1"></div> 
               
          <div class="col-5"> 
		      <label class="font-weight-bold">Quantity</label><br>
		      <form:input type="int" placeholder="Enter book quantity" path="qty"/>
		      <form:errors path="qty" cssClass="error"/> <br> <br>
          </div>
      </div>
      
      <button type="submit" class="submitbtn">Insert Record</button>
    </div>
  </form:form>
</body>
</html>


