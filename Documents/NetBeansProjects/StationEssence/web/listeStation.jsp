
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.station.Station"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.ObjectInputStream" %>
<%@page import="java.io.FileInputStream" %>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

   <%
        ArrayList<Station> ar = null;
        ar = new ArrayList<Station>();

        try (FileInputStream file = new FileInputStream("station.txt")) {
            ObjectInputStream obj = new ObjectInputStream(file);
            ar = (ArrayList<Station>) obj.readObject();
            obj.close();
            file.close();
        } catch (Exception e) {
            File newFile = new File("station.txt");
    newFile.createNewFile();
    // Try writing to the file again
    FileOutputStream file = new FileOutputStream(newFile, true);
    ObjectOutputStream obj = new ObjectOutputStream(file);
    obj.writeObject(ar);
    obj.close();
    file.close();
        }
       // request.setAttribute("station", ar);
    %>

    <% 
        ar = (ArrayList<Station>) request.getAttribute("station");
        if (ar != null && !ar.isEmpty()) {
            for (Station st : ar) { 
    %>
                <div id="stationC" style="  ">
                    <div><span>ID: </span> <%=st.getId()%></div>
                    <div><span>Station: </span> <%=st.getNom_station()%></div>
                    <div><span>Cap_Gasoline: </span> <%=st.getCp_gG()%></div>
                    <div><span>Cap_Diesel: </span> <%=st.getCp_gD()%></div>
                    <div><span>%U_Diesel: </span> <%=st.getpU_g()%></div>
                    <div><span>%U_Gasoline: </span> <%=st.getpU_d()%></div>
                    <div><span>QTD_Disponible: </span> <%=st.getQt_gD_d()%></div>
                    <div><span>QTG_Disponible: </span> <%=st.getQt_gG_d()%></div>
                </div>
    <% 
            }
        }
    %>

    <p>The result is <%=request.getAttribute("test")%></p>

    <a href="station.jsp">Back</a>
</body>
</html>