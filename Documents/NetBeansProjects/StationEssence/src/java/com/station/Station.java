
package com.station;

/**
 *
 * @author user
 */
public class Station {

    private String id;
    private String nom_station;
    private int cp_gG;
    private int cp_gD;
    private int pU_g;
    private int pU_d;
    private int qt_gD_d;
    private int qt_gG_d;

    public Station(
            String id,
            String nom_station,
            int cp_gG,
            int cp_gD,
            int pU_g,
            int pU_d,
            int qt_gD_d,
            int qt_gG_d
    ) {
        this.id = id;
        this.nom_station = nom_station;
        this.cp_gG = cp_gG;
        this.cp_gD = cp_gD;
        this.pU_g = pU_g;
        this.pU_d = pU_d;
        this.qt_gG_d = qt_gG_d;
        this.qt_gD_d = qt_gD_d;
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
     * @return the nom_station
     */
    public String getNom_station() {
        return nom_station;
    }

    /**
     * @param nom_station the nom_station to set
     */
    public void setNom_station(String nom_station) {
        this.nom_station = nom_station;
    }

    /**
     * @return the cp_gG
     */
    public int getCp_gG() {
        return cp_gG;
    }

    /**
     * @param cp_gG the cp_gG to set
     */
    public void setCp_gG(int cp_gG) {
        this.cp_gG = cp_gG;
    }

    /**
     * @return the cp_gD
     */
    public int getCp_gD() {
        return cp_gD;
    }

    /**
     * @param cp_gD the cp_gD to set
     */
    public void setCp_gD(int cp_gD) {
        this.cp_gD = cp_gD;
    }

    /**
     * @return the pU_g
     */
    public int getpU_g() {
        return pU_g;
    }

    /**
     * @param pU_g the pU_g to set
     */
    public void setpU_g(int pU_g) {
        this.pU_g = pU_g;
    }

    /**
     * @return the pU_d
     */
    public int getpU_d() {
        return pU_d;
    }

    /**
     * @param pU_d the pU_d to set
     */
    public void setpU_d(int pU_d) {
        this.pU_d = pU_d;
    }

    /**
     * @return the qt_gD_d
     */
    public int getQt_gD_d() {
        return qt_gD_d;
    }

    /**
     * @param qt_gD_d the qt_gD_d to set
     */
    public void setQt_gD_d(int qt_gD_d) {
        this.qt_gD_d = qt_gD_d;
    }

    /**
     * @return the qt_gG_d
     */
    public int getQt_gG_d() {
        return qt_gG_d;
    }

    /**
     * @param qt_gG_d the qt_gG_d to set
     */
    public void setQt_gG_d(int qt_gG_d) {
        this.qt_gG_d = qt_gG_d;
    }
    
}
