<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- x -->

<html>

    <head>
        <title>esathi.viewer</title>
        <style>
            body {
                background-image: url("background.png");
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

            .user_page {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            .about {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            .contact {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
            }

            .header_left {
                display: flex;
                justify-content: end;
                align-items: flex-end;
                margin-right: 30px;
            }

            .bottom_body {
                height: 80%;
                position: relative;
                width: 90%;
                margin-top: 20px;
            }

            .chatbox {
                position: absolute;
                border-radius: 40px;
                width: 111%;
                height: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .viewer_page {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            /* Style the outer container. Centralize contents, both horizontally and vertically */
            #bot {
                height: 80%;
                width: 65%;
                background: #bcd6d3;
                display: flex;
                align-items: center;
                justify-content: center;
                box-shadow: 3px 3px 15px rgba(0, 0, 0, 0.2);
                border-radius: 20px;
            }

            /* Make container slightly rounded. Set height and width to 90 percent of .bots' */
            #container {
                height: 90%;
                border-radius: 6px;
                width: 90%;
                background: #F3F4F6;
            }

            /* Style body */
            #body {
                width: 100%;
                height: 85%;
                background-color: #bcd6d3;
                overflow-y: auto;
            }

            /* Style container for user messages */
            .userSection {
                width: 100%;
            }

            /* Seperates user message from bot reply */
            .seperator {
                width: 100%;
                height: 50px;
            }

            /* General styling for all messages */
            .messages {
                max-width: fit-content;
                margin: .5rem;
                font-size: 1.2rem;
                padding: .5rem;
                border-radius: 7px;
            }

            /* Targeted styling for just user messages */
            .user-message {
                margin-top: 1rem;
                text-align: left;
                background: rgb(90 169 225);
                color: white;
            }

            /* Targeted styling for just bot messages */
            .bot-reply {
                text-align: right;
                background: #E5E7EB;
                margin-top: 1rem;
                float: right;
                color: black;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
            }

            /* Style the input area */
            #inputArea {
                height: 10%;
                padding: 1rem;
                background: #bcd6d3;
            }

            /* Style the text input */
            #userInput {
                height: 25px;
                width: 75%;
                background-color: white;
                border-radius: 35px;
                padding: 1rem;
                font-size: 1rem;
                border: none;
                outline: none;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
            }

            /* Style send button */
            #send {
                font-size: 1rem;
                width: 15%;
                height: 100%;
                text-align: center;
                color: white;
                background: #3B82F6;
                cursor: pointer;
                border: none;
                border-radius: 35px;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
                float: right;
            }

            #send:hover{
                text-shadow: 6px 6px 3px cyan;
            }

            .form{
                border-radius: 35px;
                background: white;
            }
            .header_left a:hover{
                background: whitesmoke;
                text-shadow: 2px 2px 5px grey;
            }
        </style>
    </head>

    <body>
        <div class="header">
            <div class="logo">
                <img src="esathi.jpg" alt="LOGO" class="logo_img">
            </div>
            <div class="header_left">
                <a href="viewPage.jsp" class="viewer_page">Viewer</a>
                <a href="userPage.jsp" class="user_page">User</a>
                <a href="#" class="about">About</a>
                <a href="#" class="contact">Contact</a>
            </div>
        </div>

        <div class="bottom_body">
            <div class="chatbox">
                <div id="bot">
                    <div id="container">
                        <div id="body">
                            <div class="userSection">
                                <div class="messages user-message">
                                    hy hello how are u 
                                    </form>
                                </div>
                                <br>
                                <div class="seperator"></div>
                            </div>
                        </div>
                        <div id="inputArea">
                            <form action="viewPage.jsp" method="POST">
                                <input type="text" name="response" id="userInput" placeholder="Respond Here..." required>
                                <input type="number" name="message_id" id="message_id" hidden>
                                <input type="submit" id="send" value="Send">
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </body>

</html>