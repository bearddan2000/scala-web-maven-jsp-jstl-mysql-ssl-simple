<!DOCTYPE html>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring web example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <span>Hello World</span>
    </div>
    <div class="container">
        <% out.print("Hello from jsp"); %>
    </div>
    <div class="container">
      <my:database querry="SELECT * FROM dog;" />
    </div>
    <div class="container" id="greet"/>  
    <div class="container">
      <footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      </footer>
    </div>
    <script src="js/hello.js"></script>
</body>
</html>