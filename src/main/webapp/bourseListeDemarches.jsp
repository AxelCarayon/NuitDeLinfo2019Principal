<%-- 
    Document   : bourseListeDemarches
    Created on : 6 déc. 2019, 04:19:58
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste des différentes démarches concernant les bourses : </title>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <body>
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
                    <h2>Liste de toutes les démarches possibles concernant les bourses : </h2>
                </div>
            </section>
            
            
            <br/><br/><br/>
            <!-- Demarche -->
            <section class="row justify-content">
                    <div class="col-lg-12 text-center">
                        <a href="bourseDemarches.jsp">Obtenir une bourse</a>
                    </div>
                    
                    <br/><br/><br/>
                    <div class="col-lg-12 text-center">
                        <a href="dseDemarches.jsp">Compléter son Dossier Social Etudiant</a>
                    </div>
                    
                    <br/><br/><br/>
                    <div class="col-lg-12 text-center">
                        <a href="contestationBoursesDemarches.jsp">Contester une décision du CROUS</a>
                    </div>
            </section>
            
            
            <div style="height:100px;" class ="row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
        </div>
    </body>
</html>
