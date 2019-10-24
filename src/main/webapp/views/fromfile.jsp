<%--
  Created by IntelliJ IDEA.
  User: Spectre
  Date: 22/10/2019
  Time: 01:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new pet</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Super hell app!</h1>
</div>

<div class="w3-container w3-padding">

    <div class="w3-card-4">
        <div class="w3-container w3-center w3-green">
            <h2>Add pets from a file</h2>
        </div>

        <form method="post" action="uploadServlet" enctype="multipart/form-data">
<%--            read about the servlet for uploading files here:
 https://www.codejava.net/java-ee/servlet/java-file-upload-example-with-servlet-30-api--%>

            Select file to upload: <input type="file" name="uploadFile" />

            <input type="submit" value="Upload" />
        </form>
    </div>
</div>

<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='./'">Back to main</button>
</div>
</body>
</html>
