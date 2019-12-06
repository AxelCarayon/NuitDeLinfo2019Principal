<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orientation</title>
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
                    <a href="index.jsp">
                        <img src="Images/retour.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                    </a>
                </div>
            </section>
            
            
            
        <div class="container-fluid">
            <div style="height:100px;" class = "row align-items"></div>
            <section class="row justify-content">
                <div class="col-lg-12 text-center">
                    <img src="Images/orientation.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                </div>
            </section>
            <div style="height:100px;" class = "row align-items">               
                <div class="col-lg-12">                    
                    <h2 class="text-center font-weight-bold">Informez vous sur votre orientation !</h2>
                </div>
            </div>
            <section class="row justify-content">
            <!-- Mise à jour de la grille bootstrap -->
                <div class="col-lg-1"></div>
                <div class="row col-lg-10">
                    <div class="col-lg-12"></div>
                    <div class="col-lg-5 text-center">
                        <a href="#" class="btn btn-success btn-lg active button-choix" role="button" aria-pressed="true">Je sais ce que je veux faire</a>
                        <br/><h5 class="text-center font-weight-light">Cliquez ici si vous avez une idée du domaine</h4>
                    </div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-5 text-center">
                        <a href="#" class="btn btn-success btn-lg active button-choix" role="button" aria-pressed="true">Je ne sais pas ce que je veux faire</a>
                        <br/><h5 class="text-center font-weight-light">Cliquez ici si vous ne savez pas quoi faire</h4>
                    </div>
                </div>    
                <div class="col-lg-1"></div>
            </section>
            <div style="height:100px;" class ="row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
        </div>
    </body>
</html>
