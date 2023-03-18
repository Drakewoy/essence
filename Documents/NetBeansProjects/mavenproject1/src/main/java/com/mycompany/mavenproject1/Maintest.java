/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mavenproject1;

/**
 *
 * @author user
 */
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.Button;

public class Maintest extends Application {
    @Override
    public void start(Stage primaryStage){
        Button btOk = new Button("Ok");
        Scene scene = new Scene(btOk, 200, 250);
        primaryStage.setTitle("MyFirstJavaFxApp");
        primaryStage.setScene(scene);
        
        primaryStage.show();   
    }
    
    public static void main(String[] args){
        launch(args);
    }
}