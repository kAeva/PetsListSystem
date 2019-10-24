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
        <div>

            <%
                if (request.getAttribute("petItem") != null) {
                    out.println("<p>You've chosen a '" + request.getAttribute("petItem") + "' pet</p>");
                    out.println("<button class=\"w3-btn w3-light-blue w3-hover-light-blue w3-round-large\" onclick=\"location.href='./deletepet'\">Click here to delete</button>\n");
                    out.println("<button class=\"w3-btn w3-light-blue w3-hover-light-blue w3-round-large\" onclick=\"location.href='./editpet'\">Click here to edit</button>\n");

                }
            %>
        </div>
        <%

            List<Pet> pets = (List<Pet>) request.getAttribute("pet");

            out.println("<form method=\"post\" class=\"w3-selection w3-light-grey w3-padding\">");
            if (pets != null && !pets.isEmpty()) {
                int x =0;
                for (Pet s : pets) {

                    out.println("<input type=\"radio\" id=\"s\" name=\"petItem\" value=\"" + s +"\">");
                    out.println("<label for=\"s\">" + s + "</label>");
                    out.println("</br>");
                    out.println("<input type=\"hidden\" id=\"indexId\" name=\"indexId\" value=\"" + x + "\">\n");
                    x++;
                    out.println("</br>");


                }
                out.println("<input type=\"submit\" value=\"Confirm\" />\n");


                out.println("</br>");


            } else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n"
                    +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
                    "   <h5>There are no pets yet!</h5>\n" +
                    "</div>");
            out.println("</form>");


        %>
    </div>
</div>

<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='./'">Back to main</button>
</div>
</body>
</html>
