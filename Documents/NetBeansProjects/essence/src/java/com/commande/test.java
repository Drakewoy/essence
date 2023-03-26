/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.commande;

import java.io.IOException;
import traitements.TraitementCommande;

/**
 *
 * @author user
 */
public class test {
    public static void main(String[] args) throws IOException{
        TraitementCommande tc = new TraitementCommande();
        
        Boolean btc = tc.enregistre();
        if(btc){
        System.out.println("successful!!");
        }else{
        System.out.println("Not successful!!");
        }
        
        
    }
}
