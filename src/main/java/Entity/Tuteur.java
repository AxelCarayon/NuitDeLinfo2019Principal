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

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 59 * hash + Objects.hashCode(this.email);
        hash = 59 * hash + Objects.hashCode(this.sexe);
        hash = 59 * hash + Objects.hashCode(this.description);
        hash = 59 * hash + (int) (Double.doubleToLongBits(this.moyenne) ^ (Double.doubleToLongBits(this.moyenne) >>> 32));
        hash = 59 * hash + Objects.hashCode(this.categories);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Tuteur other = (Tuteur) obj;
        if (Double.doubleToLongBits(this.moyenne) != Double.doubleToLongBits(other.moyenne)) {
            return false;
        }
        if (!Objects.equals(this.email, other.email)) {
            return false;
        }
        if (!Objects.equals(this.sexe, other.sexe)) {
            return false;
        }
        if (!Objects.equals(this.description, other.description)) {
            return false;
        }
        if (!Objects.equals(this.categories, other.categories)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Tuteur{" + "email=" + email + ", sexe=" + sexe + ", description=" + description + ", moyenne=" + moyenne + ", categories=" + categories + '}';
    }
    
    
    
}
