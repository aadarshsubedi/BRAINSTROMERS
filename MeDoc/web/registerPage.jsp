<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MeDoc-Register</title>
        <style>
            body{
                background-image: url("background2.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
            form {
                font-size: 25px;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                width: 100%;
                height: 645px;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .errorMsg{
                width: 100%;
                height:40px ;
                float: left;
                display: flex;
                justify-content: center;
                align-items: center;
                color: red;
                font-size: 15px;
            }

            .contain {
                height: 300px;
                width: 300px;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 25px;
            }

            .contains{
                border: 3px blue solid;
                border-radius: 20px;
                backdrop-filter: blur(20px);
            }

            .sidePic{
                border: 3px blue solid;
                backdrop-filter: blur(20px);
                padding: 5px;
                border-radius: 20px;
                height: 16.4em;
                background-image: url("registerPageImg.jpg");
            }

            .uname,
            .pass,
            .signin,.reg {
                width: 300px;
                float: left;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 20px;
            }

            .field {
                height: 25px;
                border-radius: 5px;
                margin-left: 4px;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            }

            .signField {
                width: 90px;
                padding: 4px;
                border-radius: 10px;
                background-color: cadetblue;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            }

            .signField:hover {
                background-color: lightcyan;
            }
            .logo {
                border: 1px solid black;
                height: 150px;
                width: 150px;
                border-radius: 50%;
            }

            .logo_img {
                height: 150px;
                width: 150px;
                border-radius: 50%;
            }
            a{
                text-decoration: none;
                color: mediumblue;
            }
            a:hover{
                color: darkblue;
                text-shadow: 2px 2px 5px cyan;
            }
            .reg{
                font-size: 20px;
            }
        </style>
    </head>

    <body>
        <div class="header">
            <div class="logo">
                <img src="logo2.png" alt="LOGO" class="logo_img">
            </div>
        </div>
        <form action="logexe" method="post">
            <div class="contain">
                <div class="contains">
                    <div class="uname">
                        <label for="uname">Username:</label>
                        <input type="text" name="rname" class="field" placeholder="Your unique name">
                    </div>
                    <br>
                    <div class="pass">
                        <label for="pass">Password:</label>
                        <input type="password" name="rpass" class="field" placeholder="Password">
                    </div>
                    <div class="pass">
                        <label for="pass">Confirm:</label>
                        <input type="password" name="cpass" class="field" placeholder="Confirm password">
                    </div>
                    <div class="errorMsg">
                        <%if (request.getMethod().equalsIgnoreCase("post")) {
                                out.print(request.getAttribute("errorMsg"));
                            }%>
                    </div>
                    <div class=signin>
                        <input type="submit" value="Register" name="flag" class="signField">
                    </div>
                    <div class="reg">Already Known? <a href="loginPage.jsp">GetIn</a></div>
                </div>
            </div>
            <div class="sidePic">
                <img src="registerPageImg.jpg" alt="doctimgs" />
            </div>
        </form>
    </body>

</html>