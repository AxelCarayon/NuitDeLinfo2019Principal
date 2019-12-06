<%-- 
    Document   : indexEtudiant
    Created on : 6 déc. 2019, 00:42:05
    Author     : maxime
    Function   : Permet à létudiant de sélectionner la catégorie qui l'interesse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categories</title>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <body>
        <div class="container-fluid">            
            <section class="row justify-content">
                
                <div class="row  text-center align-items-center">
                    <div class="col-lg-1 col-md-1"></div>
                    <div class="col-lg-3 col-md-3">
                        <a href="bourse.jsp">
                            <div class="row size-image-Logos"><img src="Images/LogoBourse.png" class="img-fluid rounded" alt="Responsive image"></div>
                            <div class="col-lg-11 col-md-11 text-center">Bourses</div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4">
                    <div class="row">
                        <div class="col-lg-2 col-md-2"></div>
                        <div class="col-lg-8 col-md-8">
                            <div class="row size-image-Logos">
                            <img src="Images/LogoLogement.png" class="img-fluid rounded" alt="Responsive image">
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2"></div>
                    </div><div class="col-lg-12 col-md-12 text-center">Logement</div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="row size-image-Logos"><img src="Images/LogoOrientation.png" class="img-fluid rounded" alt="Responsive image"></div>
                        <div class="col-lg-11 col-md-11 text-center">Orientation</div>
                    </div>
                    <div class="col-lg-1 col-md-1"></div>
                </div>
                
                <div class="row">
                    <div class="col-lg-2 col-md-2"></div>
                    <div class="col-lg-3 col-md-3">
                        <div class="row size-image-Logos"><img src="Images/LogoRestauration.png" class="img-fluid rounded" alt="Responsive image"></div>
                        <div class="row"><div class="col-lg-11 col-md-11 text-center">Restauration</div></div>
                    </div>
                    <div class="col-lg-2 col-md-2"></div>
                    <div class="col-lg-3 col-md-3">
                        <div class="row size-image-Logos"><img src="Images/LogoSante.png" class="img-fluid rounded" alt="Responsive image"></div>
                        <div class="col-lg-11 text-center">Sante</div>
                    </div>
                    <div class="col-lg-2 col-md-2"></div>
                </div>
                
            </section>
        </div>
    </body>
</html>
