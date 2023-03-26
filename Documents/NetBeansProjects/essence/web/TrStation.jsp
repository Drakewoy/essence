<%@page import="traitements.TraitementStation"%>
<%!%>
<%
    TraitementStation trSt = new TraitementStation();
    
    if (trSt.enregistrer(request.getParameter("Station"),
            Integer.parseInt(request.getParameter("Cap_Gasoline")),
            Integer.parseInt(request.getParameter("Cap_Diesel")),
            Integer.parseInt(request.getParameter("pU_Diesel")),
            Integer.parseInt(request.getParameter("pU_Gasoline")),
            Integer.parseInt(request.getParameter("qtD_Disponible")),
            Integer.parseInt(request.getParameter("qtG_Disponible")))) {
        response.sendRedirect("listeStation.jsp");
    }else{
    response.sendRedirect("station.jsp");
    }
    

%>