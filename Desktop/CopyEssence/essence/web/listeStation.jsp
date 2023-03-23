<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.station.StationModels"%>
<%@page import="traitements.TraitementStation"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    TraitementStation trSt = new TraitementStation();
    HashMap<String, StationModels> map = null;
    try {
        map = trSt.lecture();
    } catch(Exception e){
    e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html charset=UTF-8">
        <meta http-equiv="cache-control" content="no-cache, must-revalidate, post-check=0, pre-check=0">

        <title>Station</title>
    </head>
    <body>
        <h1>Station</h1>



        <div class="fListeStation">
            
        <%
            if (map != null) {
                if (map.size() > 0) {
                    for (StationModels st : map.values()) {
             
        %>
            <div class="ListeStation">
                <div class="station"><span>ID:</span><%=st.getId()%></div>
                <div class="station"><span>Station:</span><%=st.getNom_station()%></div>
                <div class="station"><span>Cap_Gasoline:</span><%=st.getCp_gG()%></div>
                <div class="station"><span>Cap_Diesel:</span><%=st.getCp_gD()%></div>
                <div class="station"><span>U_Diesel:</span><%=st.getpU_g()%></div>
                <div class="station"><span>U_Gasoline:</span><%=st.getpU_d()%></div>
                <div class="station"><span>QTD_Disponible:</span><%=st.getQt_gD_d()%></div>
                <div class="station"><span>QTG_Disponible:</span><%=st.getQt_gG_d()%></div>
            </div>
            
                <%   }
        }
        } %>
 <div class="control">Modifier</div>
          


 <!--// request.setAttribute("Station", st);-->
       
        </div>



    <a href="station.jsp">Back</a>
</body>
</html>