/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Tuteur;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

/**
 *
 * @author Axel
 */
public class DAO {
    
    private final DataSource myDataSource;
    private final String url = "jdbc:mysql://localhost:3306/sosetudiantdb";
    private final String utilisateur = "admin";
    private final String motDePasse = "admin";
    
    public DAO(DataSource dataSource) {
        this.myDataSource = dataSource;
    }
    
    
    /**
     * Affiche la moyenne d'un tuteur
     * @param mail le mail du tuteur
     * @return la moyenne de toutes les notes du tuteur
     * @throws SQLException
     */
    public double afficherMoyenne(String mail) throws SQLException{
        double moyenne = 0;
        String sql = "SELECT * FROM NOTES WHERE MAIL = ?";
        try (Connection connection = myDataSource.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, mail);
            ResultSet rs = statement.executeQuery();
            int nombre_notes = 0;
            while (rs.next()) {
                nombre_notes ++;
                moyenne += rs.getInt("NOTE");
            }
            moyenne = moyenne/nombre_notes;
        }catch (SQLException e){
            throw e;
        }
        
        return moyenne;
    }
    /*
    méthode pour mysql:
    public double afficherMoyenne(String mail) throws SQLException{
        double moyenne = 0;
        String sql = "SELECT * FROM NOTES WHERE MAIL = ?";
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, mail);
            ResultSet rs = statement.executeQuery();
            int nombre_notes = 0;
            while (rs.next()) {
                nombre_notes ++;
                moyenne += rs.getInt("NOTE");
            }
            moyenne = moyenne/nombre_notes;
        }catch (SQLException e){
            throw e;
        } finally {
        if ( connexion != null )
            try {
                 Fermeture de la connexion 
                connection.close();
            } catch ( SQLException ignore ) {
                 Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
            }
        }
        return moyenne;
    }
    */
    
    /**
     * Affiche toutes les catégories d'un tuteur
     * @param mail le mail du tuteur souhaité
     * @return la listes de toutes les catégories d'un tuteur
     * @throws SQLException 
     */
    public List<String> afficherCategories(String mail) throws SQLException{
        List<String> resultat = new ArrayList<>();
        String sql = "SELECT * FROM INTERETS WHERE MAIL = ?";
        try (Connection connection = myDataSource.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, mail);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                String categorie = rs.getString("CATEGORIE");
                resultat.add(categorie);
            }
        }catch (SQLException e){
            throw e;
        }
        return resultat;
    }
    /*
    méthode pour mysql:
    public List<String> afficherCategories(String mail) throws SQLException{
        List<String> resultat = new ArrayList<>();
        String sql = "SELECT * FROM INTERETS WHERE MAIL = ?";
        
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, mail);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                String categorie = rs.getString("CATEGORIE");
                resultat.add(categorie);
            }
        }catch (SQLException e){
            throw e;
        } finally {
        if ( connexion != null )
            try {
                 Fermeture de la connexion 
                connection.close();
            } catch ( SQLException ignore ) {
                 Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
            }
        }
    }
    */
    
    
    /**
     * Affiche la liste de tous les tuteurs
     * @return la liste de tous les tuteurs
     * @throws SQLException 
     */
    public List<Tuteur> listeTuteurs() throws SQLException{
        List<Tuteur> resultat = new ArrayList<>();
        String sql = "SELECT * FROM TUTEUR";
        try (Connection connection = myDataSource.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                String email = rs.getString("MAIL");
                String sexe = rs.getString("SEXE");
                String description = rs.getString("DESCRIPTION");
                double moyenne = afficherMoyenne(email);
                List<String> categories = afficherCategories(email);
                Tuteur tuteur = new Tuteur(email,sexe,description,moyenne,categories);
                resultat.add(tuteur);
            }
        }catch (SQLException e){
            throw e;
        }
        return resultat;
    } 
    
    /*
    méthode pour mysql:
    public List<Tuteur> listeTuteurs() throws SQLException{
        List<Tuteur> resultat = new ArrayList<>();
        String sql = "SELECT * FROM TUTEUR";
        
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
             ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                String email = rs.getString("MAIL");
                String sexe = rs.getString("SEXE");
                String description = rs.getString("DESCRIPTION");
                double moyenne = afficherMoyenne(email);
                List<String> categories = afficherCategories(email);
                Tuteur tuteur = new Tuteur(email,sexe,description,moyenne,categories);
                resultat.add(tuteur);
            }
        }catch (SQLException e){
            throw e;
        } finally {
        if ( connexion != null )
            try {
                 Fermeture de la connexion 
                connection.close();
            } catch ( SQLException ignore ) {
                 Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
            }
        }
    }
    */
    
    
    public void supprimerTuteur(String email) throws SQLException{
        String sql = "DELETE FROM INTERETS WHERE MAIL = ?";
        try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw e;
        }
        sql = "DELETE FROM NOTES WHERE MAIL = ?";
        try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw e;
        }
        sql = "DELETE FROM TUTEUR WHERE MAIL= ?";
        try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw e;
        }
    }
    /*
    méthode pour mysql:
    public void supprimerTuteur(String email) throws SQLException{
        String sql = "DELETE FROM INTERETS WHERE MAIL = ?";
        
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.executeUpdate();
            }
        }catch (SQLException e){
            throw e;
        }
        sql = "DELETE FROM NOTES WHERE MAIL = ?";
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.executeUpdate();
            }
        }catch (SQLException e){
            throw e;
        }
        sql = "DELETE FROM TUTEUR WHERE MAIL= ?";
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.executeUpdate();
            }
        }catch (SQLException e){
            throw e;
        }finally {
            if ( connexion != null )
                try {
                    Fermeture de la connexion 
                    connection.close();
                } catch ( SQLException ignore ) {
                    Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
                }
        }
    }
    */
    
    public void ajouterTuteur(String email, String sexe, String description) throws SQLException{
        String sql = "INSERT INTO TUTEUR VALUES (?,?,?)";
        try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.setString(2, sexe);
            statement.setString(3, description);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw e;
        }
    }
    /*
    méthode pour mysql:
    public void ajouterTuteur(String email, String sexe, String description) throws SQLException{
        String sql = "INSERT INTO TUTEUR VALUES (?,?,?)";
        
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.setString(2, sexe);
            statement.setString(3, description);
            statement.executeUpdate();
            }
        }catch (SQLException e){
            throw e;
        } finally {
        if ( connexion != null )
            try {
                 Fermeture de la connexion 
                connection.close();
            } catch ( SQLException ignore ) {
                 Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
            }
        }
    }
    */
    
    public void ajouterInteretTuteur(String categorie,String email) throws SQLException{
        String sql = "INSERT INTO INTERETS(categorie,mail) VALUES(?,?)";
        try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
            statement.setString(1, categorie);
            statement.setString(2, email);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw e;
        }
    }
    /*
    méthode pour mysql:
    public void ajouterInteretTuteur(String categorie,String email) throws SQLException{
        String sql = "INSERT INTO INTERETS(categorie,mail) VALUES(?,?)";
        
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, categorie);
            statement.setString(2, email);
            statement.executeUpdate();
            }
        }catch (SQLException e){
            throw e;
        } finally {
        if ( connexion != null )
            try {
                 Fermeture de la connexion 
                connection.close();
            } catch ( SQLException ignore ) {
                 Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
            }
        }
    }
    */
    
    public void supprimerInteretTuteur(String email, String categorie) throws SQLException{
        String sql = "DELETE FROM INTERETS WHERE MAIL = ? AND CATEGORIE = ?";
        try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.setString(2, categorie);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw e;
        }
    }
    /*
    méthode pour mysql:
    public void supprimerInteretTuteur(String email, String categorie) throws SQLException{
        String sql = "DELETE FROM INTERETS WHERE MAIL = ? AND CATEGORIE = ?";
        
        try (Connection connection = DriverManager.getConnection( this.url, this.utilisateur, this.motDePasse );
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            statement.setString(2, categorie);
            statement.executeUpdate();
            }
        }catch (SQLException e){
            throw e;
        } finally {
        if ( connexion != null )
            try {
                 Fermeture de la connexion 
                connection.close();
            } catch ( SQLException ignore ) {
                 Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
            }
        }
    }
    */
    
}
