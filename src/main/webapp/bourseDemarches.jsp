<%-- 
    Document   : bourseDemarches
    Created on : 6 déc. 2019, 03:56:06
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Obtention bourse</title>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <body>
        
        
            <!-- En tête -->
            <section class="row justify-content">
                <!-- Bouton retour accueil -->
                <div class="col-lg-3">
                    <a href="index.jsp">
                        <img src="Images/accueil.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                    </a>
                </div>
                
                <div class="col-lg-6"></div>
                
                <!-- bouton retour -->
                <div class="col-lg-3">
                    <a href="bourseListeDemarches.jsp">
                        <img src="Images/retour.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                    </a>
                </div>
            </section>
            
            
            
        <div class="container-fluid">
            <!-- logo -->
            <div style="height:100px;" class = "row align-items"></div>
            <section class="row justify-content">
                <div class="col-lg-12 text-center">
                    <img src="Images/bourse.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                </div>
            </section>
            
            <!-- Titre -->
            <section class="row justify-content">
                <div class="col-lg-12 text-center">
                    <a href="https://www.etudiant.gouv.fr/pid33629-cid96330/les-bourses-sur-criteres-sociaux.html">
                        <h2>Demarche d'obtention d'une bourse : </h2>
                    </a>
                </div>
            </section>
            
            
            <!-- Demarche -->
            <section class="row justify-content">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="https://www.etudiant.gouv.fr/cid111606/constituez-votre-dossier-social-etudiant-dse.html">
                            1-- Constituer son Dossier Social Etudiant (DSE)
                        </a>
                        <i><a href="dseDemarches.jsp">Aide</a></i>
                    </div><br/><br/><br/>
                    <div class="col-lg-12 text-center">
                        2-- Validation du DSE dans votre boîte mail, ou renvoi du DSE corrigé
                    </div><br/><br/>
                    <div class="col-lg-12 text-center">
                        3-- Réception de la validation du CROUS dans les 30 jours suivants
                    </div><br/><br/>
                    <div class="col-lg-12 text-center">
                        4-- Confirmation du dossier de la part du futur établissement de l’étudiant
                    </div<br/><br/>
                </div>
            </section>
            
            
            <div style="height:100px;" class ="row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
        </div>
    </body>
</html>
