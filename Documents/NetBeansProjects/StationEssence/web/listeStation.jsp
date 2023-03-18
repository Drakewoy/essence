
<%@page import="com.station.Station"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Station</title>
    </head>
    <body>
        <h1>Station</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Station</th>
                <th>Cap_Gasoline</th>
                <th>Cap_Diesel</th>
                <th>%U_Diesel</th>
                <th>%U_Gasoline</th>
                <th>QTD_Disponible</th>
                <th>QTG_Disponible</th>
            </tr>
            
                <%
                    ArrayList<Station> ar = (ArrayList<Station>) request.getAttribute("station");
                    if (ar != null) {
                        if (!ar.isEmpty()) {
                            for (Station st : ar) {
                %>
                <tr>
                <td><%=st.getId()%></td>
                <td><%=st.getNom_station()%></td>
                <td><%=st.getCp_gG()%></td>
                <td><%=st.getCp_gD()%></td>
                <td><%=st.getpU_g()%></td>
                <td><%=st.getpU_d()%></td>
                <td><%=st.getQt_gD_d()%></td>
                <td><%=st.getQt_gG_d()%></td>
               
            </tr>
             <%}}}%>
        </table>
    </body>
</html>
