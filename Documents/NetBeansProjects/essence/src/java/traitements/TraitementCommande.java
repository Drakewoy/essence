/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package traitements;

import com.commande.Commande;
import com.station.StationModels;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

import java.util.HashMap;
import java.util.Random;
import java.util.Scanner;
import java.util.StringTokenizer;

/**
 *
 * @author user
 */
public class TraitementCommande {

    TraitementStation tr = new TraitementStation();

    HashMap<String, StationModels> mapS = null;

    public TraitementCommande() {

    }

    Random rand = new Random();
    File fichier = new File("commande.txt");
    FileWriter fw = null;

    public void creerF() {
        try {
            if (!fichier.exists()) {
                fichier.createNewFile();
            }
            System.out.println("Creating commande.txt file...");
        } catch (IOException e) {
            System.err.println("Error creating file: " + e.getMessage());
        }
    }

//      private String id;
//    private int qt_gD;
//    private int qt_gG;
//    private String date_C;
//    private String etat;
    int qt_gD = 0;
    int qt_gG = 0;
    int puG = 0;
    int puD = 0;
    String nS = "";
    ArrayList pCom = new ArrayList();
    String  id = "CM_" + rand.nextInt(999);
//ecriture du fichier commande
    public boolean enregistre() throws IOException {

      
        LocalDate date_C = LocalDate.now();
        String etat = "P";
        boolean check = true;
        try {
            mapS = tr.liste();
        } catch (IOException e) {
            System.err.println("Error getting list of stations: " + e.getMessage());
        }
        if (mapS != null && mapS.size() > 0) {
            creerF();
            for (StationModels st : mapS.values()) {
                System.out.println("Processing station " + st.getNom_station());
                qt_gG += st.getQt_gG_d();
                qt_gD += st.getQt_gD_d();
            }

            String line = id + ":" +  qt_gG+ ":" + qt_gD + ":" + date_C + ":" + etat + "\r\n";
            try {
                fw = new FileWriter(fichier, true);
                fw.write(line);
            } catch (IOException e) {
                System.err.println("Error writing data to file: " + e.getMessage());
                throw e;
            } finally {
                if (fw != null) {
                    try {
                        fw.close();
                    } catch (IOException e) {
                        System.err.println("Error closing file: " + e.getMessage());
                    }
                }
            }
            check = true;
        }
        return check;
    }
//    Methode de pre_commande avant de l'enregistrement
    public HashMap<String, Commande> preCommande() throws IOException{
        HashMap<String, Commande> col = new HashMap();
//        **********
        LocalDate date_C = LocalDate.now();
        String etat = "N";
        
        try {
            mapS = tr.liste();
        } catch (IOException e) {
            System.err.println("Error getting list of stations: " + e.getMessage());
        }
        if (mapS != null && mapS.size() > 0) {
            creerF();
            for (StationModels st : mapS.values()) {
                System.out.println("Processing station " + st.getNom_station());
                qt_gG += st.getQt_gG_d();
                qt_gD += st.getQt_gD_d();
              
            }
String date =""+date_C; 
//            String line = id + ":" + qt_gD + ":" + qt_gG + ":" + date_C + ":" + etat + "\r\n";
           col.putIfAbsent(id, new Commande(id, qt_gG, qt_gD, date, etat));
        }
      
//        **********
        
        
    return col;
    }
    
    public HashMap<String, Commande> liste() throws IOException{
    HashMap<String, Commande> col = new HashMap();
    StringTokenizer st = null;
    Scanner sc = new Scanner(fichier);
    while(sc.hasNextLine()){
    st =new StringTokenizer(sc.nextLine(), ":");
    String id = st.nextToken();
    String qt_gG = st.nextToken();
    String qt_gD = st.nextToken();
    String date = st.nextToken();
    String etat = st.nextToken();
    col.putIfAbsent(id, new Commande(id, Integer.parseInt(qt_gG), Integer.parseInt(qt_gD), date, etat ));
    }
    return col;
    }
}
