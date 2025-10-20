-- Insertion des catégories de dépenses
INSERT INTO depense (nature) VALUES
('Dépenses par nature économique'),
('Dépenses par rattachement administratif');

-- Insertion des natures de dépenses économiques
INSERT INTO nature_depense (rubrique, id_depense) VALUES
('Intérêts de la dette', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('Dépenses courantes de solde (hors indemnités)', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('Dépenses courantes hors solde', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('Indemnités', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('Biens/Services', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('Transferts et subventions', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('Dépenses d''investissement', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('PIP sur financement interne', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('PIP sur financement externe', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique')),
('Autres opérations nettes du trésor', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par nature économique'));

-- Insertion des suivis financiers dépenses économiques pour 2024
INSERT INTO suivi_financier_depense (montant, annee, id_nature) VALUES
(672.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Intérêts de la dette')),
(3814.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Dépenses courantes de solde (hors indemnités)')),
(3069.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Dépenses courantes hors solde')),
(244.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Indemnités')),
(573.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Biens/Services')),
(2251.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Transferts et subventions')),
(4836.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Dépenses d''investissement')),
(1262.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement interne')),
(3574.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement externe')),
(390.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Autres opérations nettes du trésor'));

-- Insertion des suivis financiers dépenses économiques pour 2025
INSERT INTO suivi_financier_depense (montant, annee, id_nature) VALUES
(756.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Intérêts de la dette')),
(3846.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Dépenses courantes de solde (hors indemnités)')),
(2304.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Dépenses courantes hors solde')),
(244.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Indemnités')),
(504.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Biens/Services')),
(1554.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Transferts et subventions')),
(8537.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Dépenses d''investissement')),
(2377.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement interne')),
(6159.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement externe')),
(860.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Autres opérations nettes du trésor'));

-- Insertion des natures de dépenses par rattachement administratif
INSERT INTO nature_depense (rubrique, id_depense) VALUES
('Présidence de la République', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Sénat', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Assemblée Nationale', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Haute Cour Constitutionnelle', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Primature', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Conseil du Fampihavanana Malagasy', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Commission Électorale Nationale Indépendante', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Défense Nationale', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère des Affaires Étrangères', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Justice', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Intérieur', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Économie et des Finances', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Sécurité Publique', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Industrialisation et du Commerce', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Décentralisation et de l''Aménagement du Territoire', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère du Travail, de l''Emploi et de la Fonction Publique', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère du Tourisme et de l''Artisanat', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Enseignement Supérieur et de la Recherche Scientifique', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Environnement et du Développement Durable', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Éducation Nationale', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère des Transports et de la Météorologie', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Santé Publique', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Communication et de la Culture', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère des Travaux Publics', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère des Mines et des Ressources Stratégiques', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Énergie et des Hydrocarbures', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Eau, de l''Assainissement et de l''Hygiène', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Agriculture et de l''Élevage', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Pêche et de l''Économie Bleue', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Enseignement Technique et de la Formation Professionnelle', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de l''Artisanat et des Métiers', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère du Développement Numérique, des Postes et des Télécommunications', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Population et des Solidarités', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère de la Jeunesse et des Sports', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Secrétariat d''État en charge des Nouvelles Villes et de l''Habitat', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Ministère délégué chargé de la Gendarmerie', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Secrétariat d''État en charge de la Souveraineté Alimentaire', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Haut Conseil pour la Défense de la Démocratie et de l''État de Droit', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Commission Nationale Indépendante des Droits de l''Homme', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')),
('Haute Cour de Justice', (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'));

-- Insertion des suivis financiers dépenses administratives pour 2024
INSERT INTO suivi_financier_depense (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
    (177.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Présidence de la République' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (22.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Sénat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (87.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Assemblée Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (11.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour Constitutionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (278.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Primature' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (6.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Conseil du Fampihavanana Malagasy' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (113.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Électorale Nationale Indépendante' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (557.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Défense Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (99.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Affaires Étrangères' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (199.6, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (150.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Intérieur' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2848.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Économie et des Finances' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (228.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Sécurité Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (113.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Industrialisation et du Commerce' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (356.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Décentralisation et de l''Aménagement du Territoire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (31.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère du Travail, de l''Emploi et de la Fonction Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (19.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère du Tourisme et de l''Artisanat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (284.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Enseignement Supérieur et de la Recherche Scientifique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (94.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Environnement et du Développement Durable' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (1532.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Éducation Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (63.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Transports et de la Météorologie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (716.6, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Santé Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (38.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Communication et de la Culture' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (1217.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Travaux Publics' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (18.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Mines et des Ressources Stratégiques' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (407.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Énergie et des Hydrocarbures' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (306.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Eau, de l''Assainissement et de l''Hygiène' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (469.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Agriculture et de l''Élevage' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (29.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Pêche et de l''Économie Bleue' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (103.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Enseignement Technique et de la Formation Professionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (8.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère du Développement Numérique, des Postes et des Télécommunications' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (99.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Population et des Solidarités' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (40.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Jeunesse et des Sports' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (247.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Secrétariat d''État en charge des Nouvelles Villes et de l''Habitat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (414.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère délégué chargé de la Gendarmerie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haut Conseil pour la Défense de la Démocratie et de l''État de Droit' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Nationale Indépendante des Droits de l''Homme' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (3.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour de Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')))
) AS t(montant, annee, id_nature);

-- Insertion des suivis financiers dépenses administratives pour 2025
INSERT INTO suivi_financier_depense (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
    (224.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Présidence de la République' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (21.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Sénat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (85.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Assemblée Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (9.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour Constitutionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (339.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Primature' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (6.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Conseil du Fampihavanana Malagasy' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (16.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Électorale Nationale Indépendante' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (543.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Défense Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (104.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Affaires Étrangères' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (219.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (134.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Intérieur' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2332.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Économie et des Finances' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (229.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Sécurité Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (119.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Industrialisation et du Commerce' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (568.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Décentralisation et de l''Aménagement du Territoire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (33.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère du Travail, de l''Emploi et de la Fonction Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (43.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère du Tourisme et de l''Artisanat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (285.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Enseignement Supérieur et de la Recherche Scientifique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (188.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Environnement et du Développement Durable' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (1562.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Éducation Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (216.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Transports et de la Météorologie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (921.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Santé Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (32.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Communication et de la Culture' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2327.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Travaux Publics' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (18.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère des Mines et des Ressources Stratégiques' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (1332.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Énergie et des Hydrocarbures' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (600.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Eau, de l''Assainissement et de l''Hygiène' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (795.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Agriculture et de l''Élevage' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (28.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Pêche et de l''Économie Bleue' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (94.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Enseignement Technique et de la Formation Professionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de l''Artisanat et des Métiers' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (8.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère du Développement Numérique, des Postes et des Télécommunications' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (193.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Population et des Solidarités' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (58.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère de la Jeunesse et des Sports' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (138.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Secrétariat d''État en charge des Nouvelles Villes et de l''Habitat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (446.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministère délégué chargé de la Gendarmerie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (127.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Secrétariat d''État en charge de la Souveraineté Alimentaire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haut Conseil pour la Défense de la Démocratie et de l''État de Droit' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (2.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Nationale Indépendante des Droits de l''Homme' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif'))),
    (3.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour de Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Dépenses par rattachement administratif')))
) AS t(montant, annee, id_nature);

-- Insertion des types de dette
INSERT INTO dette (nature) VALUES
('Dette Extérieure'),
('Dette Intérieure');

-- Insertion des suivis de dette pour 2025
INSERT INTO suivi_dette (montant, interet, annee, id) VALUES
(880.9, 314.2, 2025, (SELECT id FROM dette WHERE nature = 'Dette Extérieure')),
(0, 442.2, 2025, (SELECT id FROM dette WHERE nature = 'Dette Intérieure'));

-- Insertion des acronymes
INSERT INTO acronyme (libelle, meaning) VALUES
('BAD', 'Banque Africaine pour le Développement'),
('CRCM', 'Caisse de Retraite Civile et Militaire'),
('HT', 'Hors Taxe'),
('IFPB', 'Impôt Foncier sur la Propriété Bâtie'),
('IFT', 'Impôt Foncier sur le Terrain'),
('IMP', 'Impôt sur les Marchés Publics'),
('IR', 'Impôt sur les Revenus'),
('IRCM', 'Impôt Sur les Revenus des Capitaux Mobiliers'),
('KW', 'Kilowatt'),
('LF', 'Loi de Finances'),
('LFI', 'Loi de Finances Initiale'),
('LFR', 'Loi de Finances Rectificative'),
('MW', 'Mégawatt'),
('OGT', 'Opérations Globales du Trésor'),
('PIB', 'Produit Intérieur Brut'),
('PIP', 'Programme d''Investissements Publics'),
('PLF', 'Projet de Loi de Finances'),
('PTF', 'Partenaires Technique et Financier'),
('SADC', 'Southern African Development Community'),
('TAFPB', 'Taxe Annexe à l''IFPB'),
('TTM', 'Taxe sur les Transactions Mobiles'),
('TVA', 'Taxe sur la Valeur Ajoutée');