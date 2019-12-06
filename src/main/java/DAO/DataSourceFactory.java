/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import javax.sql.DataSource;

/**
 *
 * @author lauriecoumes
 */
public class DataSourceFactory {

    public static DataSource getDataSource() {
        DataSource result;

        org.apache.derby.jdbc.ClientDataSource ds = new org.apache.derby.jdbc.ClientDataSource();
        ds.setDatabaseName("sosetudiantdb");
        ds.setUser("app");
        ds.setPassword("app");
        // The host on which Network Server is running
        ds.setServerName("localhost");
        // port on which Network Server is listening
        ds.setPortNumber(1527);
        result = ds;
        
        return result;
    }
    
    /* Connexion à la base de données 
    String url = "jdbc:mysql://localhost:3306/sosetudiantdb";
    String utilisateur = "admin";
    String motDePasse = "admin";
    Connection connexion = null;
    try {
        connexion = DriverManager.getConnection( url, utilisateur, motDePasse );

         Ici, nous placerons nos requêtes vers la BDD 

    } catch ( SQLException e ) {
         Gérer les éventuelles erreurs ici 
    } finally {
        if ( connexion != null )
            try {
                 Fermeture de la connexion 
                connexion.close();
            } catch ( SQLException ignore ) {
                 Si une erreur survient lors de la fermeture, il suffit de l'ignorer. 
            }
}
    
    */
}
