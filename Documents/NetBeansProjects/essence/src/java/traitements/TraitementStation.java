/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package traitements;

import com.station.StationModels;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Random;
import java.util.Scanner;
import java.util.StringTokenizer;

/**
 *
 * @author user
 */
public class TraitementStation {

    Random rand = new Random();
    File file = new File("station.txt");
    FileWriter fw = null;

    public void creer() throws IOException {
        if (!file.exists()) {
            file.createNewFile();
        }
    }

    public boolean enregistrer( String nom_station, int cp_gG, int cp_gD, int pU_g, int pU_d, int qt_gD_d, int qt_gG_d) throws IOException {
        boolean check = false;
        if (nom_station != null) {
            creer();
          String id = nom_station.substring(0, 2).toUpperCase() + "-" + rand.nextInt(100);
            String line = id + ":" + nom_station + ":" + cp_gG + ":" + cp_gD + ":" + pU_g + ":" + pU_d + ":" + qt_gD_d + ":" + qt_gG_d + "\r\n";
            fw = new FileWriter(file, true);
            fw.write(line);
            fw.close();
        }
        return check = true;
    }
    
    public HashMap<String, StationModels>liste() throws IOException{
        HashMap<String, StationModels> coll =new HashMap();
        StringTokenizer st = null;
    Scanner sc = new Scanner(file);
    if(sc !=null){
    while(sc.hasNextLine()){
        st=new StringTokenizer(sc.nextLine(), ":");
        String code = st.nextToken();
        String nom = st.nextToken();
        String cp_gG = st.nextToken();
        String cp_gD = st.nextToken();
        String pU_g = st.nextToken();
        String pU_d = st.nextToken();
        String qt_gD_d = st.nextToken();
        String qt_gG_d = st.nextToken();
        coll.putIfAbsent(code, new StationModels(code, nom, Integer.parseInt(cp_gG),Integer.parseInt(cp_gD),
                Integer.parseInt(pU_g), Integer.parseInt(pU_d), Integer.parseInt(qt_gD_d), Integer.parseInt(qt_gG_d)));
    }
    }
    return coll;
    }
    
   
}
