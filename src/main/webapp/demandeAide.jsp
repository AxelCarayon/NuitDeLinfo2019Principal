<%-- 
    Document   : demandeAide
    Created on : 6 déc. 2019, 06:53:36
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- On charge jQuery -->
        <script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <!-- On charge le moteur de template mustache https://mustache.github.io/ -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min.js"></script>
        <script>
            $(document).ready(// Exécuté à la fin du chargement de la page
                    function () {
                        // On montre la liste des codes
                        ObtenirTuteurs();
                    }
            );
    
    
    function ObtenirTuteurs(){
        $.ajax({
                    url: "listeTuteursCategorieServlet",
                    dataType: "json",
                    error: showError,
                    success: // La fonction qui traite les résultats
                            function (result) {
                                // Le code source du template est dans la page
                                var template = $('#tuteursTemplate').html();
                                // On combine le template avec le résultat de la requête
                                var processedTemplate = Mustache.to_html(template, result);
                                // On affiche la liste des options dans le select
                                $('#tuteurs').html(processedTemplate);
                            }
                });
    }
        </script>
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <body>
        <div class="container-fluid">
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
                    <a href="indexEtudiant.jsp">
                        <img src="Images/retour.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                    </a>
                </div>
            </section>
            
            
            <!-- Titre et présentation -->
            <section class="row justify-content">
                <div class="col-lg-12 text-center">
                    <img src="Images/bulleDialogue.png" class="img-fluid mx-auto size-image-categorie" alt="Responsive image">
                </div>
            </section>
            <div style="height:100px;" class = "row align-items">               
                <div class="col-lg-12">                    
                    <h2 class="text-center font-weight-bold">Demande d'aide à un autre étudiant :</h2>
                </div>
            </div>
            
            
            <!-- Contenu de la page -->
            
             <!-- La zone où les résultats vont s'afficher -->
            <div id="tuteurs"></div>
            
            
            <script id="tuteursTemplate" type="text/template">
                <table>
                    <tr><th>E-mail</th><th>Description</th><th>Moyenne</th></tr>
                    {{! Pour chaque tuteur }}
                    {{#records}}
                        {{! Une ligne dans la table }}
                        <TR>
                            <TD>{{email}}</TD>
                            <TD>{{description}}</TD>
                            <TD>{{moyenne}}</TD>
                        </TR>
                    {{/records}}
                </table>
            </script>

        </div>
    </body>
</html>
