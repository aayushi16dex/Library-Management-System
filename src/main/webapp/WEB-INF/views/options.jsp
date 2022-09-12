<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ include file="header.jsp" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
                crossorigin="anonymous"></script>
            <style>
                body {
                    font-family: Arial, Helvetica, sans-serif;
                    background-color: white;
                    overflow-x: hidden;
                    overflow-y: hidden;
                }

                * {
                    padding: 0;
                    margin: 0;
                }


                .menu {
                    width: 90%;
                }

                .container {
                    padding: 16px;
                    background-color: white;
                    column-count: auto auto;
                }

                .homing {
                    display: flex;
                    justify-content: center;
                    font-size:55px;
                    color:#5499C7 
                }

                hr {
                    border: 2px solid #f1f1f1;
                    margin: 10px;
                }
                .button {
                    background-color: #1A5276;
                    border: none;
                    color: white;
                    cursor: pointer;
                    padding: 14px;
                    text-align: center;
                    text-decoration: none;
                    display: inline-block;
                    font-size: large;
                    border-radius: 8px;
                    box-sizing: border-box;
                    width: 30%;
                }

                .button:hover {
                    background-color: #A9DFBF;
                    color: black;
                }

                .itms {
                    border: 2px solid black;
                }

                img {
                    width: auto;
                    height: 40vh;
                }

                .image {
                    top: -216px;
                    right: -55vw;
                    position: relative;
                }

                /********************************/

                .dropdown {
                    position: relative;
                    display: inline-block;
                    width: 100%;
                }

                .dropdown-content {
                    display: none;
                    position: absolute;
                    background-color: #f9f9f9;
                    min-width: 160px;
                    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                    z-index: 1;
                }

                .dropdown-content a {
                    color: black;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                    font-size: medium;
                }

                .dropdown-content a:hover {
                    background-color: rgb(229, 229, 229);

                }

                .dropdown:hover .dropdown-content {
                    display: block;
                }
            </style>
            <title>Options</title>
        </head>

        <body>
            <form>
                <br>
                <div class="container">

                    <h2><i class="fa fa-home homing"></i></h2>
                    <br><br>
                    <div class="menu">
                        <a href="showInsertForm" class="button">Insert a New Book</a>
                        <hr>
                        <a href="viewBooks" class="button">View Books</a>
                        <hr>
                        <a href="showDashboardCard"  class="button">Show Book Cards</a>

                        <div class="image">
                            <img src="https://images-na.ssl-images-amazon.com/images/I/711c-uf6AFL.jpg" alt="no img...">
                        </div>
                    </div>
                </div>
            </form>
        </body>

        </html>