## Sécurité du cloud computing, TP3 InspectorVuln

Ce projet, intitulé InspectorVuln, consiste à déployer une instance EC2 sur AWS, installer un agent de sécurité, et utiliser Amazon Inspector pour identifier des vulnérabilités. 

Le terraform du projet automatise les tâches suivantes : 
- Déploiement d'une instance EC2 : Créer une instance Amazon Linux avec des règles de sécurité personnalisées, permettant l'accès SSH et les ports spécifiques.
- Installation de l'agent AWS Inspector : Installer un agent pour évaluer la sécurité de l'instance EC2 via des scans.
- Création de scans de vulnérabilités : Configurer un "Assessment Target" et un "Assessment Template" dans Amazon Inspector

Pour permettre ensuite l'exécution manuelle des tâches suivantes :
- Exécution de l'agent AWS Inspector : Exécuter une analyse pour identifier des failles de sécurité.
- Génération de rapports : Analyser les résultats de l'audit en générant un rapport détaillé sur les vulnérabilités détectées, avec des recommandations pour leur correction.