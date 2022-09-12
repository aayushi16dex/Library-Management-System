<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
        body {
        
            overflow-x: hidden;
            overflow-y: hidden;
        }

        * {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }

        .hero {
            height: 100%;
            width: 100%;
            background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("https://img.freepik.com/free-photo/book-stack-library-room-blurred-bookshelf-background_42691-514.jpg?w=2000");
            background-position: center;
            background-size: cover;
            position: absolute;
        }

        .form-box {
            width: 380px;
            height: 420px;
            position: relative;
            margin: 6% auto;
            background: white;
            padding: 5px;
            overflow: hidden;
        }

        .button-box {
            width: 220px;
            margin: 30px auto;
            position: relative;
            box-shadow: 0 0 20px 9px #ff61241f;
            border-radius: 30px;
        }

        .toggle-btn {
            padding: 10px 30px;
            cursor: pointer;
            background: transparent;
            border: 0;
            outline: none;
            position: relative;
        }

        #btn {
            top: 0;
            left: 0;
            position: absolute;
            width: 110px;
            height: 100%;
            background: linear-gradient(to right, #ff105f, #ffad06);
            border-radius: 30px;
            transition: .5s;
        }

        .input-group {
            top: 150px;
            position: absolute;
            width: 280px;
            transition: .5s;
        }

        .input-field {
            width: 100%;
            padding: 10px 0;
            margin: 5px 0;
            border-left: 0;
            border-top: 0;
            border-right: 0;
            border-bottom: 1px solid #999;
            outline: none;
            background: transparent;
        }

        .submit-btn {
            width: 85%;
            font-size: 18px;
            padding: 10px 30px;
            cursor: pointer;
            display: block;
            margin: auto;
            background: linear-gradient(to right, #ff105f, #ffad06);
            border: 0;
            outline: none;
            border-radius: 30px;
        }

        .check-box {
            margin: 25px 10px 30px 0;
        }

        span {
            color: #777;
            font-size: 12.5px;
            bottom: 68px;
            position: absolute;
        }

        #login {
            left: 50px;
        }

        #register {
            left: 450px;
        }

        * {
            margin: 0;
            padding: 0;
        }

        .header {
            height: 8vw;
            background-color: gainsboro;
            text-align: center;
            justify-content: center;
            padding-top: 1.5rem;
            box-sizing: border-box;
        }

        h2 {
            margin-top: 5vh;
            font-weight: bold;
            color: white;
            text-shadow: 1px 1px 2px black, 0 0 5px grey;
            text-align: center;

            font-size: 300%;
        }
    </style>
</head>

<body>
    <div class="hero">
        <h2>E-Library Management System</h2>
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log in</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
            
            <form id="login" class="input-group" action="loginPage" method="post">
                <input type="text" class="input-field" placeholder="Enter Username" name="userName">
                <input type="password" class="input-field" placeholder="Enter Password" name="password" id="upass"
                    required>
                <br><br>
                
                <a href="#" style="float: right; color: #777; font-size: 13.5px; text-decoration: none;"><strong>Forgot password?</strong></a><br>
                <input type="checkbox" class="check-box" onclick="myFunction()"><span id="span">Show Password</span>
                <button type="submit" class="submit-btn">Log in</button>
            </form>
            
            <form id="register" class="input-group" action="registerPage" method="post">
                <input type="text" class="input-field" placeholder="Enter Username" name="userName" required>
                <input type="password" class="input-field" placeholder="Enter Password" name="password" id="upass1" required>

                <input type="checkbox" class="check-box" required><span>I agree to the terms & conditions</span>

                <button type="submit" class="submit-btn">Register</button>
            </form>
        </div>
    </div>
    
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register() {
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
        function login() {
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = " 0px";
        }
        function myFunction() {
            var x = document.getElementById("upass");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }

        function myFunction1() {
            var x = document.getElementById("upass1");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>

</body>

</html>