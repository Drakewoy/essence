<%-- 
    Document   : Commande
    Created on : Mar 15, 2023, 4:26:11 PM
    Author     : user
--%>

<%@page import="java.io.IOException"%>
<%@page import="com.commande.Commande"%>
<%@page import="traitements.TraitementCommande"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.station.StationModels"%>
<%@page import="traitements.TraitementStation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    TraitementCommande trC = new TraitementCommande();
    TraitementStation trSt = new TraitementStation();
    HashMap<String, Commande> mapC = null;
    HashMap<String, Commande> mapPC = null;
    HashMap<String, StationModels> map = null;
    try {
        map = trSt.liste();
    } catch (Exception e) {
        e.getMessage();
    }

    try {
        mapPC = trC.preCommande();
    } catch (Exception e) {
        System.err.println("Error: " + e.getMessage());
    }

    try {
        mapC = trC.liste();
    } catch (IOException e) {
        System.err.println("erreur avec la methode liste Commande: " + e.getMessage());
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commande</title>
    </head>
    <body>
        <!--La partie du pre_commande-->
        <div class="preCommande">
            <h1 class="h1Com">Pre-Commande</h1>
            <table border="1" id="pr_table">
                <tr>
                    <th>Station</th>
                    <th>%U_Gasoline</th>
                    <th>%U_Diesel</th>
                </tr>
                <%
                    if (map != null && map.size() > 0) {
                        for (StationModels st : map.values()) {
                %>
                <tr>
                    <td><%=st.getNom_station()%></td>
                    <td><%=st.getpU_g()%></td>
                    <td><%=st.getpU_d()%></td>
                </tr>
                <%}
                    }%>
            </table>
            <table border="1" id="dx_table"> 
                <tr>
                    <th>ID</th>
                    <th>QTG</th>
                    <th>QTD</th>
                    <th>DATE_C</th>
                    <th>ETAT</th>
                </tr>
                <%
                    if (mapPC != null && !mapPC.isEmpty()) {
                        for (Commande cm : mapPC.values()) {

                %>
                <tr>

                    <td><%=cm.getId()%></td>
                    <td><%=cm.getQt_gG()%></td>
                    <td><%=cm.getQt_gD()%></td>
                    <td><%=cm.getDate_C()%></td>
                    <td><%=cm.getEtat()%></td>

                </tr>
                <%}
                    }%>
            </table>
            <form action="TrCommande.jsp">
                <input type="submit" value="Valider">
            </form>
        </div>
        <!--La liste des commande-->
        <div class="listeCommande">
            <h1 class="h1Com">Liste-Commande</h1>
            <table border="1" align="center">
                <tr>
                    <th>ID</th>
                    <th>Qt gal Gasoline</th>
                    <th>Qt gal Diesel</th>
                    <th>Date</th>
                    <th>Etat</th>
                </tr>
                <%
                    if (mapC != null && !mapC.isEmpty()) {
                        for (Commande cl : mapC.values()) {

                %>
                <tr>
                    <td><%=cl.getId()%></td>
                    <td><%=cl.getQt_gG()%></td>
                    <td><%=cl.getQt_gD()%></td>
                    <td><%=cl.getDate_C()%></td>
                    <td><%=cl.getEtat()%></td>
                </tr>
                <%}
                    }%>
            </table>

        </div>

    </body>
</html>
