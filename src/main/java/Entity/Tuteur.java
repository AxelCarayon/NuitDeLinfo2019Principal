/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.List;
import java.util.Objects;

/**
 *
 * @author Axel
 */
public class Tuteur {
    
    private String email;
    private String sexe;
    private String description;
    private double moyenne;
    private List<String> categories;
    

    public Tuteur(String email, String sexe, String description, double moyenne, List<String> categories) {
        this.email = email;
        this.sexe = sexe;
        this.description = description;
        this.moyenne = moyenne;
        this.categories = categories;
    }

    public String getEmail() {
        return email;
    }


    public String getSexe() {
        return sexe;
    }

    public String getDescription() {
        return description;
    }


    public double getMoyenne() {
        return moyenne;
    }
    
    public List<String> getCategories(){
        return categories;
    }
    
    
}
