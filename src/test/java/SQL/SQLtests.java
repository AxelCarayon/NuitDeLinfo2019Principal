/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import DAO.DAO;
import Entity.Tuteur;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.hsqldb.cmdline.SqlFile;
import org.hsqldb.cmdline.SqlToolError;
import org.junit.After;
import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Axel
 */
public class SQLtests {
    
    private DAO dao;
    private static Connection myConnection ;
    private DataSource myDataSource; // La source de données à utiliser
    
    @org.junit.Before
    public void setUp() throws SQLException, IOException, SqlToolError {
        myDataSource = getDataSource();
	myConnection = myDataSource.getConnection();
	// On initialise la base avec le contenu d'un fichier de test
	String sqlFilePath = DAO.class.getResource("SQLtests.sql").getFile();
	SqlFile sqlFile = new SqlFile(new File(sqlFilePath));
	sqlFile.setConnection(myConnection);
	sqlFile.execute();
	sqlFile.closeReader();
        dao = new DAO(myDataSource);
    }
    
    @org.junit.After
    public void tearDown() throws SQLException {
        myConnection.close();		
        dao = null; // Pas vraiment utile
    }
    
    @org.junit.Test
    public void afficherMoyenneTest() throws SQLException{
        double moyenne = (10.+5.+2.+4.+8.)/5.;
        assertEquals(moyenne,dao.afficherMoyenne("axel.carayon@gmail.com"),0);
    }
    
    @org.junit.Test
    public void afficherCategoriesTest() throws SQLException{
        List<String> resultat = new ArrayList<>();
        resultat.add("Bourses");
        resultat.add("Logement");
        assertEquals(resultat,dao.afficherCategories("axel.carayon@gmail.com"));
    }
    
    
    public static DataSource getDataSource() throws SQLException {
        org.hsqldb.jdbc.JDBCDataSource ds = new org.hsqldb.jdbc.JDBCDataSource();
        ds.setDatabase("jdbc:hsqldb:mem:testcase;shutdown=true");
        ds.setUser("sa");
        ds.setPassword("sa");
        return ds;
    }
    
}
