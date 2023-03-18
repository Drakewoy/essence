package com.commande;
/**
 *
 * @author user
 */
public class Commande {

    private String id;
    private int qt_gD;
    private int qt_gG;
    private String date_C;
    private String etat;
//Le constructeur

    public Commande(
            String id,
            int qt_gD,
            int qt_gG,
            String date_C,
            String etat
    ) {
        this.id = id;
        this.qt_gD = qt_gD;
        this.qt_gG = qt_gG;
        this.date_C = date_C;
        this.etat = etat;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the qt_gD
     */
    public int getQt_gD() {
        return qt_gD;
    }

    /**
     * @param qt_gD the qt_gD to set
     */
    public void setQt_gD(int qt_gD) {
        this.qt_gD = qt_gD;
    }

    /**
     * @return the qt_gG
     */
    public int getQt_gG() {
        return qt_gG;
    }

    /**
     * @param qt_gG the qt_gG to set
     */
    public void setQt_gG(int qt_gG) {
        this.qt_gG = qt_gG;
    }

    /**
     * @return the date_C
     */
    public String getDate_C() {
        return date_C;
    }

    /**
     * @param date_C the date_C to set
     */
    public void setDate_C(String date_C) {
        this.date_C = date_C;
    }

    /**
     * @return the etat
     */
    public String getEtat() {
        return etat;
    }

    /**
     * @param etat the etat to set
     */
    public void setEtat(String etat) {
        this.etat = etat;
    }
    
    
}
