From: [conf->email]@[conf->host]
To: Listmaster <[to]>
[IF type=request_list_creation]
Subject: Demande de cr�ation de la liste "[list->name]"

Une demande de cr�ation pour la liste "[list->name]" a �t� faite par [email].

[list->name]@[list->host]
[list->subject]
[conf->wwsympa_url]/info/[list->name]

Pour activer/supprimer cette liste :
[conf->wwsympa_url]/get_pending_lists
[ELSIF type=virus_scan_failed]
Subject: Echec de la d�tection antivirale

L'appel � l'antivirus a �chou� lors du traitement du fichier suivant :
	[filename]

Le message d'erreur est :
	[error_msg]
[error_msg]
[ELSIF type=edit_list_error]
Subject: Format incorrect de edit_list.conf

Le format du fichier de configuration edit_list.conf a chang� :
'default' n'est plus reconnu pour une population.

Reportez-vous � la documentation pour adapter [param0].
D'ici l�, nous vous sugg�rons de supprimer [param0].
La configuration par d�faut sera utilis�e.

[ENDIF]
