<%@ page import="java.util.*" %>
<%@ page import="common.Pet" %><%--
  Created by IntelliJ IDEA.
  User: Spectre
  Date: 23/10/2019
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pet info</title>
</head>
<body>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Pet info</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">
        <div class="w3-container w3-light-blue">
            <h2>Pet</h2>
        </div>

        <%

            List<Pet> pets = (List<Pet>) request.getAttribute("pet");
            out.println("<h4>You've chosen " + pets.get(1) + "</h4>");
            pets.remove(1);
            out.println("<h4>Go back to the pets list to check was it removed.</h4>");
            for(int i = 0; i < pets.size(); i++) {
                out.println(pets.get(i).getName());
            }
            //out.println(request.getAttribute("indexId"));

        %>
    </div>
</div>

<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='./'">Back to main</button>
</div>
</body>
</body>
</html>
