<%-- 
    Document   : indexTuteur
    Created on : 6 déc. 2019, 00:42:05
    Author     : Gautier
    Function   : Permet à létudiant de sélectionner la catégorie qui l'interesse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tuteur</title>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <body>  
        <div class="container-fluid">
            <div style="height:100px;" class = "row align-items"></div>
            <section class="row justify-content">
                <div class="col-lg-12 text-center">
                    <img src="Images/logo.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                </div>
            </section>
            <div style="height:100px;" class = "row align-items">               
                <div class="col-lg-12">                    
                    <h2 class="text-center font-weight-bold">Devenez Tuteur !</h2>
                </div>
            </div>
            <div style="height:100px;" class = "row align-items">  
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                <div class="col-lg-16" align="center">                    
                    <p class="row text-center font-weight-bold">Etre tuteur c'est échanger avec des étudiants qui se posent des questions!</p>
                    <p class="row text-center font-weight-bold">Etre tuteur c'est aider son prochain!</p>
                </div>
                
            </div>

            <section class="row justify-content">
            <!-- Mise à jour de la grille bootstrap -->
                <div class="col-lg-1"></div>
                <div class="row col-lg-10">
                    <div class="col-lg-12"></div>
                    <div class="col-lg-5 text-center">
                        <a href="inscriptionTuteur.jsp" class="btn btn-success btn-lg active button-choix" role="button" aria-pressed="true">inscription</a>
                        <br/><h5 class="text-center font-weight-light">CLiquez ici si vous souhaitez devenir tuteur</h5>
                    </div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-5 text-center">
                        <a href="#" class="btn btn-success btn-lg active button-choix" role="button" aria-pressed="true">connexion</a>
                        <br/><h5 class="text-center font-weight-light">Cliquez ici si vous etes déjà tuteur</h5>
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
