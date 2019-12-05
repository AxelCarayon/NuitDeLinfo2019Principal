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
    
    
    /**
     * Affiche la liste de tous les tuteurs
     * @return Liste de tous les tuteurs
     * @throws SQLException 
     */
    public List<Tuteur> listeTuteurs() throws SQLException{
        List<Tuteur> resultat = new ArrayList<Tuteur>();
        //A FAIRE
        return resultat;
    } 
    
}
