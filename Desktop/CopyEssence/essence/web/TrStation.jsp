
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>

<%@page import="com.station.Station"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.File"%>
<%!
    File file = new File("station.txt");
    FileWriter fw = null;
%>
<%

    Station st = new Station(
            request.getParameter("id"),
            request.getParameter("Station"),
            Integer.parseInt(request.getParameter("Cap_Gasoline")),
            Integer.parseInt(request.getParameter("Cap_Diesel")),
            Integer.parseInt(request.getParameter("pU_Diesel")),
            Integer.parseInt(request.getParameter("pU_Gasoline")),
            Integer.parseInt(request.getParameter("qtD_Disponible")),
            Integer.parseInt(request.getParameter("qtG_Disponible")));
    //  int test = Integer.parseInt(request.getParameter("Cap_Gasoline")) + Integer.parseInt(request.getParameter("Cap_Diesel"));

// Ecriture du fichier 
    fw = new FileWriter(file, true);

    String str = st.getId() + ":" + st.getNom_station() + ":"
            + st.getCp_gG() + ":" + st.getCp_gD() + ":"
            + st.getpU_g() + ":" + st.getpU_d() + ":"
            + st.getQt_gD_d() + ":" + st.getQt_gG_d() + "\n";
    try {

        FileReader fr = new FileReader(file);
        BufferedReader br = new BufferedReader(fr);
        String line;
            while ((line = br.readLine()) != null) {
                if (line.contains(st.getId())) {
                    out.println("Data already exists!");
                    break;
                } else {
                    fw.write(str);
                    fw.close();
                }
            }
      
    } catch (IOException e) {
        e.getMessage();

    }

//    request.getRequestDispatcher("listeStation.jsp").forward(request, response);
    response.sendRedirect("listeStation.jsp");
%>


