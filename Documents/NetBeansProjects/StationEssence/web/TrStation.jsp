
<%@page import="java.util.ArrayList"%>
<%@page import="com.station.Station"%>
<%! ArrayList<Station> ar = null;%>

<%
    ar = new ArrayList<Station>();

    Station st = new Station(
            request.getParameter("id"),
            request.getParameter("Station"),
            Integer.parseInt(request.getParameter("Cap_Gasoline")),
            Integer.parseInt(request.getParameter("Cap_Diesel")),
            Integer.parseInt(request.getParameter("pU_Diesel")),
            Integer.parseInt(request.getParameter("pU_Gasoline")),
            Integer.parseInt(request.getParameter("qtD_Disponible")),
            Integer.parseInt(request.getParameter("qtG_Disponible")));
ar.add(st);
request.setAttribute("station", ar);
request.getRequestDispatcher("listeStation.jsp").forward(request, response);
%>
