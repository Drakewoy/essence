<%@page import="java.util.ArrayList"%>
<%@page import="java.nio.file.Files" %>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.File"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    File file = new File("station.txt");
    if (!file.exists()) {
        file.createNewFile();
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

       
            <%
                StringTokenizer st = null;
                if (file != null) {
                    if (!Files.readAllLines(file.toPath()).isEmpty()) {
                        for (Object o : Files.readAllLines(file.toPath())) {
                           st = new StringTokenizer(o.toString(), ":");
            %>
          
            <div class="fListeStation">
                <div class="ListeStation">
                    <div><span>ID:</span><%=st.nextToken()%></div>
                    <div><span>Station:</span><%=st.nextToken()%></div>
                    <div><span>Cap_Gasoline:</span><%=Integer.parseInt(st.nextToken())%></div>
                    <div><span>Cap_Diesel:</span><%=Integer.parseInt(st.nextToken())%></div>
                    <div><span>U_Diesel:</span><%=Integer.parseInt(st.nextToken())%></div>
                    <div><span>U_Gasoline:</span><%=Integer.parseInt(st.nextToken())%></div>
                    <div><span>QTD_Disponible:</span><%=Integer.parseInt(st.nextToken())%></div>
                    <div><span>QTG_Disponible:</span><%=Integer.parseInt(st.nextToken())%></div>
                </div>
            </div>
           <%   } }}

          


    request.setAttribute("Station", st);%>
</table>
<hr>



<a href="station.jsp">Back</a>
</body>
</html>