<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gentium+Plus:wght@400;700&display=swap" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  
    <title>Header</title>

    <style>
        * {
            padding: 0;
            margin: 0;
        }

        .header {
            height: 10%;
            background-color: orange;
            width: 100%;
            border-bottom: 2px solid #1A5276;
            position: sticky;
            top:0;
            margin-top:-6px;
            box-sizing: border-box;
        }
        
        .lm {
            color: #1A5276;
            font-size: 35px;
            padding-left: 15px;
            text-shadow: 1px 1px 2px white, 0 0 5px white;
        }

        .content {
            margin-left: 20%;
            box-sizing: border-box;
            width: 80%;
        }

        .navbtn {
            padding: 5px 10px;
            color: white;
            text-decoration: none;
            font-size: 25px;
            margin: 0 6px;
            border: none;
            background-color: orange;
            cursor: pointer;
            font-family: 'Gentium Plus', serif;
        }

        .navbtn:hover {
            color: #1A5276;
        }

        .tabular{
            box-sizing: border-box;
            margin-top: 5px;       
        }

      .dropdown {
            position: relative;
            display: inline-block;
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
            background-color: #f5f5f549
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>

<body>
    <nav class="header">
        <table class="tabular row ">
            <tr>
                <td><i class="fa fa-book" style="font-size:40px;color:white"></i></td>
                <td class="lm">E-Library Management</td>

                <td>
                    <pre>                                       </pre>
                </td>
                <td><a href="options" class="navbtn">Home</a></td>
                <td>

                    <div class="dropdown">
                        <button class="navbtn">Books</button>
                        <div class="dropdown-content">
                            <a href="showDashboardCard">Card View</a>
                            <a href="viewBooks">Table View</a>
                        </div>
                    </div>
                </td>

                <td><a class="navbtn" href="#" >About us</a></td>

                <td><a class="navbtn" href="#">Contact us</a></td>

                <td><a class="navbtn" href="loggingOut">Log out</a></td>
            </tr>
        </table>
    </nav>
</body>

</html>