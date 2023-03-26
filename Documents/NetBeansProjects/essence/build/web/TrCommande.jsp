<%@page import="java.io.IOException"%>
<%@page import="traitements.TraitementCommande"%>
<%
    TraitementCommande trC = new TraitementCommande();

    if (trC.enregistre()) {
        response.sendRedirect("Commande.jsp");
    }

%>
