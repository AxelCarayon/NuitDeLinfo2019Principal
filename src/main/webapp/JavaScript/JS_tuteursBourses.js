function afficherTuteurs() {
    // Quel est l'état sélectionné ?;	
    // On fait un appel AJAX pour chercher les clients de cet état
    $.ajax({
        url: "listeTuteursCategorie?categorie=Bourses",
        dataType: "json",
        success: // La fonction qui traite les résultats
                function (result) {
                    // Le code source du template est dans la page
                    var template = $('#TableauTemplate').html();
                    // On combine le template avec le résultat de la requête
                    var processedTemplate = Mustache.to_html(template, {records: result.records});
                    // On affiche le résultat dans la page
                    $('#tableau').html(processedTemplate);
                },
        error: showError
    });
}

function showError(xhr, status, message) {
			alert("Erreur: " + status + " : " + message);
		}

afficherTuteurs();