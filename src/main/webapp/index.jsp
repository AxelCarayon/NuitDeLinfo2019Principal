<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accueil</title>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <body>  
        <div class="container-fluid">
            
            <!-- En tête -->
            <section class="row justify-content">
                <!-- Bouton retour accueil -->
                <div class="col-lg-3">
                    <a href="#">
                        <img src="Images/accueil.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                    </a>
                </div>
                
                <div class="col-lg-6"></div>
                
                <!-- bouton retour -->
                <div class="col-lg-3">
                    <a href="#">
                        <img src="Images/retour.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                    </a>
                </div>
            </section>
            
            
            <div style="height:100px;" class = "row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
            <div style="height:100px;" class = "row align-items">
                <div class="col-lg-12">
                    <h2 class="text-center font-weight-bold">Bienvenue sur SOSEtudiant <br/>Choisissez votre profil !</h2>
                </div>
            </div>
            <section class="row justify-content">
            <!-- Mise à jour de la grille bootstrap -->
                <div class="col-lg-1"></div>
                <div class="row col-lg-10">
                    <div class="col-lg-12"></div>
                    <div class="col-lg-5">
                        <a href="indexEtudiant.jsp">      
                            <img src="Images/etudiant.png" class="img-fluid rounded" alt="Responsive image">
                        </a>
                        <br/><h5 class="text-center font-weight-light">Cliquez ici pour accéder aux infos</h4>
                    </div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-5">
                        <a href="indexTuteur.jsp"> 
                            <img src="Images/tuteur.png" class="img-fluid rounded" alt="Responsive image"</div>
                        </a>
                        <br/><h5 class="text-center font-weight-light">Cliquez ici pour apporter votre aide</h4>
                </div>    
                <div class="col-lg-1"></div>
            </section>
            <div style="height:100px;" class ="row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
        </div>
    </body>
</html>
