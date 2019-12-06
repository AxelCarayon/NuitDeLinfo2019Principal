<%-- 
    Document   : formulaireTuteur
    Created on : 6 déc. 2019, 06:22:22
    Author     : Gauti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscription Tuteur</title>
        <link rel="stylesheet" href="css/config.css">
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- On charge jQuery -->
        <script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <!-- On charge le moteur de template mustache https://mustache.github.io/ -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min.js"></script>
        <script>

            // Ajouter un tuteur
            function addTuteurServlet() {
                $.ajax({
                    url: "AddTuteur",
                    // serialize() renvoie tous les paramètres saisis dans le formulaire
                    data: $("#codeForm").serialize(),
                    dataType: "json",
                    success: // La fonction qui traite les résultats
                            function (result) {
                                console.log(result);
                            },
                    error: showError
                });
                return false;
            }

            // Fonction qui traite les erreurs de la requête
            function showError(xhr, status, message) {
                alert(JSON.parse(xhr.responseText).message);
            }

        </script>
    </head>
    <body>
        <section class="row justify-content">
            <!-- Mise à jour de la grille bootstrap -->
                <div class="col-lg-1"></div>
                <div class="col-lg-1"></div>
                <div class="col-lg-1"></div>
                <div class="col-lg-1"></div>
                    <div class="container">
                        <h1 class="col-lg-1">Formulaires</h1>
                        <form id="codeForm" onsubmit="addCode();">
                          <fieldset>
                            <div class="form-group">
                              <label for="email">Entrez votre mail</label>
                              <input type="email" class="form-control" id="mail" placeholder="pierre.giraud@edhec.com">
                            </div>

                            <div class="form-group">
                              <label for="selection">Genre</label>
                              <select id="sexe" class="form-control">
                                  <option value="H">Homme</option>
                                  <option value="F">Femme</option>
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="bio">Description</label>
                              <textarea class="form-control" id="description" rows="3"></textarea>
                            </div>
                              <input type="submit" value="Valider">
                          </fieldset>
                        </form>
                    </div>
                <div class="col-lg-1"></div>
        </section>
    </body>
</html>
