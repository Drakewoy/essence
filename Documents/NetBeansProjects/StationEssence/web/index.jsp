<%-- 
    Document   : index
    Created on : Mar 15, 2023, 4:50:57 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page d'accueil</title>
    </head>
    <body>
        <h1>Vous etes connectez entant que <%=request.getAttribute("username")%></h1>
  <ul>
    <li><a href="Commande.jsp">Commande</a></li>
    <li><a href="Station.jsp">Station</a></li>
    <li><a href="Vente.jsp">Vente</a></li>
</ul>
    </body>
</html>
