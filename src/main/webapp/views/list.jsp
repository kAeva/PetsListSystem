<%@ page import="java.util.*" %>
<%@ page import="common.Pet" %><%--
  Created by IntelliJ IDEA.
  User: Spectre
  Date: 22/10/2019
  Time: 01:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Super hell app!</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">
        <div class="w3-container w3-light-blue">
            <h2>Pets</h2>
        </div>

        <%

            List<Pet> pets = (List<Pet>) request.getAttribute("pet");

            if (pets != null && !pets.isEmpty()) {

                    out.println("<ul class=\"w3-ul\">");
                for (Pet s : pets) {
                        out.println("<li name=\"petFromList\"class=\"w3-hover-sand\">" + s + "</li>");
                }

                out.println("</ul>");



            } else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n"
                    +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
                    "   <h5>There are no pets yet!</h5>\n" +
                    "</div>");



        %>
        <button class="w3-btn w3-hover-light-blue w3-round-large" onclick="location.href='./toedit'">Edit pets</button>
    </div>
</div>

    <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-round-large" onclick="location.href='./'">Back to main</button>
    </div>
</body>
</html>
