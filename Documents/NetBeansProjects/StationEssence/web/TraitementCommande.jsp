<%!
    public class Commande {

        private String id;
        private String qt_gD;
        private String qt_gG;
        private String date_C;
        private String etat;

//Le constructeur
        public Commande(
                String id,
                String qt_gD,
                String qt_gG,
                String date_C,
                String etat
        ) {
            this.id = id;
            this.qt_gD = qt_gD;
            this.qt_gG = qt_gG;
            this.date_C = date_C;
            this.etat = etat;
        }
//Les getters
public String getId(){
return this.id;
}
public String getQt_gD(){
return this.qt_gD;
}
public String getQt_gG(){
return this.qt_gG;
}
public String getDate_C(){
return this.date_C;
}
public String getEtat(){
return this.etat;
}
    }
%>