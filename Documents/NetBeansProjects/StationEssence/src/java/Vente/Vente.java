/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Vente;

/**
 *
 * @author user
 */
public class Vente {

    private String id;
    private String station;
    private int qt_gd;
    private int qt_gG;
    private String date_v;

    public Vente(
            String id,
            String station,
            int qt_gd,
            int qt_gG,
            String date_v
            ) {
        this.id = id;
        this.station = station;
        this.qt_gd = qt_gd;
        this.qt_gG = qt_gd;
        this.date_v = date_v;
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
     * @return the station
     */
    public String getStation() {
        return station;
    }

    /**
     * @param station the station to set
     */
    public void setStation(String station) {
        this.station = station;
    }

    /**
     * @return the qt_gd
     */
    public int getQt_gd() {
        return qt_gd;
    }

    /**
     * @param qt_gd the qt_gd to set
     */
    public void setQt_gd(int qt_gd) {
        this.qt_gd = qt_gd;
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
     * @return the date_v
     */
    public String getDate_v() {
        return date_v;
    }

    /**
     * @param date_v the date_v to set
     */
    public void setDate_v(String date_v) {
        this.date_v = date_v;
    }
}
