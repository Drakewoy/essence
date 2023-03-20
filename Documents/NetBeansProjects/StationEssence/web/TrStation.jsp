
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.station.Station"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%! ArrayList<Station> ar = new ArrayList<Station>();%>

<%
        File file = new File("station.txt");
        
            try {
            FileOutputStream fich = new FileOutputStream(file, true) ;
            if (!file.exists()) {
            file.createNewFile();
    }else{
    
    System.out.println("File created"); 
    }
                ObjectOutputStream obj = new ObjectOutputStream(fich);
                obj.writeObject(ar);
                fich.flush();
                obj.close();
                fich.close();
            
    }catch (IOException e) {
              e.printStackTrace();
            }
        
    
    Station st = new Station(
            request.getParameter("id"),
            request.getParameter("Station"),
            Integer.parseInt(request.getParameter("Cap_Gasoline")),
            Integer.parseInt(request.getParameter("Cap_Diesel")),
            Integer.parseInt(request.getParameter("pU_Diesel")),
            Integer.parseInt(request.getParameter("pU_Gasoline")),
            Integer.parseInt(request.getParameter("qtD_Disponible")),
            Integer.parseInt(request.getParameter("qtG_Disponible")));
    int test = Integer.parseInt(request.getParameter("Cap_Gasoline")) + Integer.parseInt(request.getParameter("Cap_Diesel"));

    ar.add(st);

    request.setAttribute("station", ar);
    request.getRequestDispatcher("listeStation.jsp").forward(request, response);
%>
