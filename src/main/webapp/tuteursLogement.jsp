<%-- 
    Document   : tuteursLogement
    Created on : 6 déc. 2019, 07:12:41
    Author     : Axel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listes des tuteurs pour l'alimentation</title>
                <!-- On charge la bibliothèque JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<!-- On charge le moteur de template mustache https://mustache.github.io/ -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min.js"></script>
        <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/config.css">
    </head>
    <style type="text/css">
    </style>
    <body>
        <div id="tableau" class="container-fluid"></div>
        <script id="TableauTemplate" type="text/template">
            <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <TABLE class="table table-striped table-dark">
                                {{! Un commentaire Mustache }}
				<TR><TH scope="col">Email</TH><TH scope="col">Sexe</TH><TH scope="col">Description</TH><TH scope="col">Note moyenne</TH> </TR>
				{{! Pour chaque enregistrement }}
				{{#records}}
					{{! Une ligne dans la table }}
					<TR><TD>{{email}}</TD><TD>{{sexe}}</TD><TD>{{description}}</TD><TD>{{moyenne}}</TD></TR>
				{{/records}}
			</TABLE>
            </div>
            </div>
	</script>
        <script type="text/javascript" src="JavaScript/JS_tuteursLogement.js"></script>
    </body>
</html>