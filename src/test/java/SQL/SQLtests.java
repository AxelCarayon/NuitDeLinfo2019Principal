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
    
    @org.junit.Test
    public void listeTuteursTest() throws SQLException{
        List<Tuteur> resultat = new ArrayList<>();
        Tuteur t1 = new Tuteur("axel.carayon@gmail.com","H","Axel",dao.afficherMoyenne("axel.carayon@gmail.com"),dao.afficherCategories("axel.carayon@gmail.com"));
        Tuteur t2 = new Tuteur("Laurie.Coumes@gmail.com","F","Laurie",dao.afficherMoyenne("Laurie.Coumes@gmail.com"),dao.afficherCategories("Laurie.Coumes@gmail.com"));
        Tuteur t3 = new Tuteur("malo.bosc@gmail.com","H","Malo",dao.afficherMoyenne("malo.bosc@gmail.com"),dao.afficherCategories("malo.bosc@gmail.com"));
        resultat.add(t2);
        resultat.add(t1);
        resultat.add(t3);
        assertEquals(resultat,dao.listeTuteurs());
    }
    
    @org.junit.Test
    public void ajouterTuteurTest() throws SQLException{
        Tuteur t = new Tuteur("machin.bidule@gmail.com","H","machin",0.00,new ArrayList<String>());
        dao.ajouterTuteur("machin.bidule@gmail.com", "H", "Machin");
        System.out.println(dao.listeTuteurs());
        assertEquals(4,dao.listeTuteurs().size());
    }
    
    @org.junit.Test
    public void supprimerTuteurTest() throws SQLException{
        dao.supprimerTuteur("axel.carayon@gmail.com");
        Tuteur t2 = new Tuteur("Laurie.Coumes@gmail.com","F","Laurie",dao.afficherMoyenne("Laurie.Coumes@gmail.com"),dao.afficherCategories("Laurie.Coumes@gmail.com"));
        Tuteur t3 = new Tuteur("malo.bosc@gmail.com","H","Malo",dao.afficherMoyenne("malo.bosc@gmail.com"),dao.afficherCategories("malo.bosc@gmail.com"));
        List<Tuteur> resultat = new ArrayList<>();
        resultat.add(t2);
        resultat.add(t3);
        assertEquals(resultat,dao.listeTuteurs());
        
    }
    
    
    public static DataSource getDataSource() throws SQLException {
        org.hsqldb.jdbc.JDBCDataSource ds = new org.hsqldb.jdbc.JDBCDataSource();
        ds.setDatabase("jdbc:hsqldb:mem:testcase;shutdown=true");
        ds.setUser("sa");
        ds.setPassword("sa");
        return ds;
    }
    
}
