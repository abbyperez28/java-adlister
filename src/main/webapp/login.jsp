<%--
  Created by IntelliJ IDEA.
  User: abbyperez28
  Date: 12/19/17
  Time: 12:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if ("POST".equalsIgnoreCase(request.getMethod())){
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("password")){
        response.sendRedirect("/profile.jsp");
    }
}

%>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/partials/css/materialize.min.css" media="screen,projection"/>

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Title</title>
</head>
<body>
    <div class="row">
        <form method="POST" action="/login.jsp">
            <div class="row">
                <div class="input-field col s6 offset-s3">
                    <input name="username" id="username" type="text" class="validate">
                    <label for="username">Username</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6 offset-s3">
                    <input id="password" type="password" name="password" class="validate">
                    <label for="password">Password</label>
                </div>
            </div>
            <div>
                <button type="submit" class="waves-effect waves-light btn">Submit</button>
            </div>
        </form>
    </div>
    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/partials/js/materialize.min.js"></script>
</body>
</html>
