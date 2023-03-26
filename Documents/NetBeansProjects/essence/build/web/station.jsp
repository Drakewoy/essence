<%-- 
    Document   : station
    Created on : Mar 18, 2023, 2:24:16 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!--Le conteneur qui contient la forme--> 
        <div class="fConteneur">
            <form action="TrStation.jsp" method="post">
                <label for="station">Nom_Station</label>
                <select name="Station" id="station">
                    <option value="mirbalais">Mirbalais</option>
                    <option value="lalue">Lalue</option>
                    <option value="pv">Petion-ville</option>
                    <option value="carrefour">Carrefour</option>
                </select>
                <label for="Cap_Gasoline">Cap_Gasoline</label>
                <input type="text" name="Cap_Gasoline" required>
                <label for="Cap_Diesel">Cap_Diesel</label>
                <input type="text" name="Cap_Diesel" required>
                <label for="pU_Diesel">pU_Diesel</label>
                <input type="text" name="pU_Diesel" required>
                <label for="pU_Gasoline">pU_Gasoline</label>
                <input type="text" name="pU_Gasoline" required>
                <label for="QtD_Disponible">QtD_Disponible</label>
                <input type="text" name="qtD_Disponible" required>
                <label for="QtG_Disponible">QtG_Disponible</label>
                <input type="text" name="qtG_Disponible" required>
                <button type="submit"> Enregistrer</button>
            </form>
        </div>
    </body>
</html>
