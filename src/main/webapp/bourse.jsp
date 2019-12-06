<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bourse</title>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <body>  
        <div class="container-fluid">
            <div style="height:100px;" class = "row align-items"></div>
            <section class="row justify-content">
                <div class="col-lg-12 text-center">
                    <img src="Images/bourse.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                </div>
            </section>
            <div style="height:100px;" class = "row align-items">               
                <div class="col-lg-12">                    
                    <h2 class="text-center font-weight-bold">Informez vous sur les bourses !</h2>
                </div>
            </div>
            <section class="row justify-content">
            <!-- Mise à jour de la grille bootstrap -->
                <div class="col-lg-1"></div>
                <div class="row col-lg-10">
                    <div class="col-lg-12"></div>
                    <div class="col-lg-5 text-center">
                        <a href="#" class="btn btn-success btn-lg active button-choix" role="button" aria-pressed="true">Simulation</a>
                        <br/><h5 class="text-center font-weight-light">Cliquez ici pour accéder à la simulation.</h5>
                    </div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-5 text-center">
                        <a href="bourseListeDemarches.jsp" class="btn btn-success btn-lg active button-choix" role="button" aria-pressed="true">Boursier</a>
                        <br/><h5 class="text-center font-weight-light">Cliquez ici pour accéder aux informations destinées aux personnes boursières.</h5>
                    </div>
                </div>    
                <div class="col-lg-1"></div>
            </section>
            
            <!-- Informations générales sur les bourses -->
            <section class="row justify-content">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 text-center">
                    
                    <br/><br/><br/>
                    <h3>Informations : </h3>
                <p>Une bourse étudiante est une aide financière donnée par l’Etat dont le montant
                dépend de la situation de l’étudiant. Le montant versé est calculé à partir 
                des revenus et des charges de la famille de l’étudiant.<br/><br/>

                Pour certifier que votre profil peut prétendre à des bourses, les conditions 
                d’éligibilité sont disponibles au lien suivant : <br/><br/>
                <a href="https://www.etudiant.gouv.fr/pid33629-cid96330/les-bourses-sur-criteres-sociaux.html" 
                   class="btn btn-primary btn-lg " role="button" aria-pressed="true">Pouvoir être boursier</a>
                
                <br/><br/><br/>
                Le versement des bourses est mensuel et a lieu avant le 5 de chaque mois. Il faut 
                ensuite compter un certain nombre de jours pour permettre aux banques d’effectuer 
                les virements.<br/><br/>
                </p>
                </div>
                <div class="col-lg-3"></div>
            </section>
            
            <section><div class="row">
                <div class="col-lg-12 text-center">
                    <a href="bourseProblemes.jsp" class="btn btn-dark" role=""button aria-pressed ="true">J'ai rencontré un problème !</a>
                </div>
            </section></div>
            
            <div style="height:100px;" class ="row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
            <div style="height:100px;" class = "row align-items"></div>
        </div>
    </body>
</html>
