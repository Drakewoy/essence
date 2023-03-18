
<%@page import="java.util.ArrayList"%>
<%@page import="com.station.Station"%>
<%!
   ArrayList<Station> stat = new ArrayList();%>
<%
  
    Station mirbalais = new Station("Mir123", "Mirbalais", 5000, 5000, 100, 100, 0, 0);
    stat.add(mirbalais);
    request.setAttribute("station", stat);
    request.getRequestDispatcher("Station.jsp").forward(request, response);
%>
