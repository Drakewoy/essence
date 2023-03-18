<%-- 
    Document   : login
    Created on : Mar 15, 2023, 4:28:01 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Connectez-vous</h1>
        
        <form method="post" action="">
            <input type="text" name="user" required placeholder="Nom d'utilisateur"><br><br>
            <input type="password" name="pass" required placeholder="Mot de passe"><br><br>
            <input type="submit" value="Connecter" >
            <input type="reset" value="Reinitialiser" >
        </form>
        <%
         String user = request.getParameter("user");
         String pass = request.getParameter("pass");
         
            request.setAttribute("username", user);
         if(user!=null && user.equalsIgnoreCase("Joseph") && pass!=null && pass.equalsIgnoreCase("1234") ){
            request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        %>
    </body>
</html>
