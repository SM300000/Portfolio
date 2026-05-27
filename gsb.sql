-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 25 mai 2026 à 10:41
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsb`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `ida` int NOT NULL AUTO_INCREMENT,
  `nomA` varchar(50) NOT NULL,
  `description_activite` text NOT NULL,
  `nb_participant` int NOT NULL,
  `lieu` text NOT NULL,
  `dateA` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ida`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`ida`, `nomA`, `description_activite`, `nb_participant`, `lieu`, `dateA`, `image`) VALUES
(1, 'Conférence cardiologie', 'Présentation des nouvelles thérapies cardiovasculaires', 80, 'Hôpital Purpan, Toulouse', '2026-04-10', 'ConfCard.jpg'),
(2, 'Atelier nutrition', 'Formation sur les régimes alimentaires pour diabétiques', 30, 'Centre médical Saint-Exupéry, Blagnac', '2026-04-15', 'AtNutrition.jpg'),
(3, 'Séminaire oncologie', 'Avancées récentes en immunothérapie anticancéreuse', 120, 'Palais des Congrès, Bordeaux', '2026-05-03', 'SemOnc.jpg'),
(4, 'Journée prévention AVC', 'Sensibilisation aux facteurs de risque et premiers secours', 200, 'Mairie de Toulouse', '2026-05-20', 'prevAVC.jpg'),
(5, 'Formation premiers secours', 'Initiation aux gestes qui sauvent (BLS/DAE)', 25, 'Salle polyvalente, Colomiers', '2026-06-01', 'FormPS.jpg'),
(6, 'Symposium diabétologie', 'Nouvelles insulines et systèmes de mesure continue du glucose', 90, 'Hôtel Mercure, Montpellier', '2026-06-12', 'SympDiab.jpg'),
(7, 'Congrès pharmacologie', 'Interactions médicamenteuses et gestion des polythérapies', 150, 'Université Paul Sabatier, Toulouse', '2026-07-08', 'CongPH.jpg'),
(8, 'Atelier gestion du stress', 'Techniques de pleine conscience pour patients chroniques', 20, 'Clinique Pasteur, Toulouse', '2026-07-22', 'ATgestion.jpg'),
(9, 'Forum santé mentale', 'Dépression et anxiété : traitements combinés', 60, 'Espace Camélia, Toulouse', '2026-08-05', 'ForumSM.jpg'),
(10, 'Journée rhumatologie', 'Prise en charge de la polyarthrite rhumatoïde', 45, 'CHU de Rangueil, Toulouse', '2026-09-10', 'Jrhum.jpg'),
(11, 'Conférence pédiatrie', 'Vaccinations et calendrier vaccinal 2026', 110, 'Hôpital des Enfants, Toulouse', '2026-09-25', 'ConfPED.jpg'),
(12, 'Atelier dermatologie', 'Diagnostic et traitements des pathologies cutanées courantes', 35, 'Cabinet médical centre-ville, Albi', '2026-10-14', 'ATderma.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

DROP TABLE IF EXISTS `inscrit`;
CREATE TABLE IF NOT EXISTS `inscrit` (
  `idc` int NOT NULL,
  `ida` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  PRIMARY KEY (`idc`),
  KEY `ida` (`ida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `inscrit`
--

INSERT INTO `inscrit` (`idc`, `ida`, `email`, `nom`, `prenom`, `date_naissance`, `adresse`, `telephone`) VALUES
(0, 2, 'elise.martin@gmail.com', 'Élise', 'Martin', '1991-06-18', '', '07263728');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

DROP TABLE IF EXISTS `medicament`;
CREATE TABLE IF NOT EXISTS `medicament` (
  `idm` int NOT NULL AUTO_INCREMENT,
  `composition` text NOT NULL,
  `nom` varchar(50) NOT NULL,
  `effets_therapeutiques` text NOT NULL,
  `effets_secondaires` text NOT NULL,
  `interaction_avec_autre_medicament` text NOT NULL,
  `interdiction` text NOT NULL,
  `recommendation` text NOT NULL,
  PRIMARY KEY (`idm`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`idm`, `composition`, `nom`, `effets_therapeutiques`, `effets_secondaires`, `interaction_avec_autre_medicament`, `interdiction`, `recommendation`) VALUES
(1, 'Paracétamol 500mg', 'Doliprane 500', 'Analgésique et antipyrétique, soulage douleurs légères à modérées', 'Rares aux doses thérapeutiques, hépatotoxicité en cas de surdosage', 'Potentialise les anticoagulants oraux (warfarine)', 'Insuffisance hépatocellulaire sévère', 'Ne pas dépasser 4g par jour, espacer les prises de 4 heures minimum'),
(2, 'Ibuprofène 200mg', 'Advil 200', 'Anti-inflammatoire, antalgique et antipyrétique', 'Troubles digestifs, ulcère gastroduodénal, risque cardiovasculaire', 'Anticoagulants, lithium, méthotrexate, diurétiques', 'Grossesse à partir du 6e mois, ulcère gastrique actif', 'Prendre au cours des repas, cure courte de préférence'),
(3, 'Amoxicilline 1g', 'Clamoxyl 1g', 'Antibiotique bactéricide à large spectre (infections ORL, pulmonaires)', 'Troubles gastro-intestinaux, réactions allergiques, candidose', 'Anticoagulants oraux, allopurinol', 'Allergie aux pénicillines', 'Respecter la durée du traitement, ne pas interrompre sans avis médical'),
(4, 'Atorvastatine 10mg', 'Tahor 10mg', 'Réduction du cholestérol LDL, prévention cardiovasculaire', 'Myalgies, élévation des transaminases, troubles digestifs', 'Ciclosporine, érythromycine, antifongiques azolés', 'Insuffisance hépatique active, grossesse, allaitement', 'Prise le soir, surveillance biologique tous les 6 mois'),
(5, 'Metformine 850mg', 'Glucophage 850', 'Antidiabétique oral, réduit la glycémie par diminution de la néoglucogenèse', 'Troubles digestifs fréquents en début de traitement, acidose lactique rare', 'Alcool, produits de contraste iodés, anticoagulants', 'Insuffisance rénale sévère, alcoolisme', 'Prendre pendant les repas, surveiller la fonction rénale'),
(6, 'Amlodipine 5mg', 'Amlor 5mg', 'Antihypertenseur et antiangineux (inhibiteur calcique)', 'Oedèmes des membres inférieurs, céphalées, bouffées de chaleur', 'Cyclosporine, simvastatine à forte dose', 'Choc cardiogénique, hypotension sévère', 'Ne pas arrêter brutalement, contrôle régulier de la pression artérielle'),
(7, 'Sertraline 50mg', 'Zoloft 50mg', 'Antidépresseur (ISRS), traitement de la dépression et des TOC', 'Nausées, insomnie, dysfonction sexuelle, agitation en début de traitement', 'IMAO, tramadol, lithium, anticoagulants', 'Association avec IMAO, épilepsie non contrôlée', 'Délai d\'action 2 à 4 semaines, ne pas arrêter brutalement'),
(8, 'Oméprazole 20mg', 'Mopral 20mg', 'Inhibiteur de la pompe à protons, traitement des ulcères et du RGO', 'Céphalées, diarrhées, hyponatrémie, carence en magnésium au long cours', 'Clopidogrel (réduction d\'efficacité), méthotrexate', 'Hypersensibilité aux benzimidazoles', 'Prendre 30 min avant le repas, réévaluer la nécessité au long cours'),
(9, 'Lévothyroxine 100µg', 'Levothyrox 100', 'Traitement substitutif de l\'hypothyroïdie', 'Palpitations, nervosité si surdosage, perte de poids', 'Antiacides, calcium, fer (réduisent l\'absorption)', 'Hyperthyroïdie non traitée, infarctus récent', 'Prendre à jeun, 30 min avant le petit-déjeuner, dosage adapté par TSH'),
(10, 'Bisoprolol 5mg', 'Cardensiel 5mg', 'Bêtabloquant, traitement de l\'HTA et de l\'insuffisance cardiaque', 'Bradycardie, fatigue, extrémités froides, bronchospasme', 'Vérapamil, diltiazem, clonidine, antidiabétiques (masque hypoglycémie)', 'Asthme, BPCO sévère, bradycardie, bloc AV', 'Ne jamais arrêter brutalement, réduire progressivement sur plusieurs semaines'),
(11, 'Tramadol 50mg', 'Topalgic 50mg', 'Analgésique opioïde central pour douleurs modérées à intenses', 'Nausées, vertiges, somnolence, risque de dépendance', 'IMAO, antidépresseurs sérotoninergiques, alcool', 'Épilepsie, intoxication alcoolique aiguë, insuffisance respiratoire', 'Utilisation courte durée, surveillance du risque de dépendance'),
(12, 'Cétirizine 10mg', 'Zyrtec 10mg', 'Antihistaminique H1, traitement des allergies saisonnières et urticaire', 'Somnolence légère, sécheresse buccale', 'Alcool, anxiolytiques (potentialisation de la sédation)', 'Insuffisance rénale sévère sans adaptation posologique', 'Peut être pris le soir pour profiter de l\'effet sédatif léger');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD CONSTRAINT `inscrit_ibfk_1` FOREIGN KEY (`ida`) REFERENCES `activite` (`ida`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
