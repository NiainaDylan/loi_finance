-- Insertion des categories de depenses
INSERT INTO depense (nature) VALUES
('Depenses par nature economique'),
('Depenses par rattachement administratif');

-- Insertion des natures de depenses economiques
INSERT INTO nature_depense (rubrique, id_depense) VALUES
('Interets de la dette', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('Depenses courantes de solde (hors indemnites)', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('Depenses courantes hors solde', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('Indemnites', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('Biens/Services', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('Transferts et subventions', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('Depenses d''investissement', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('PIP sur financement interne', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('PIP sur financement externe', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique')),
('Autres operations nettes du tresor', (SELECT id_depense FROM depense WHERE nature = 'Depenses par nature economique'));

-- Insertion des suivis financiers depenses economiques pour 2024
INSERT INTO suivi_financier_depense (montant, annee, id_nature) VALUES
(672.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Interets de la dette')),
(3814.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Depenses courantes de solde (hors indemnites)')),
(3069.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Depenses courantes hors solde')),
(244.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Indemnites')),
(573.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Biens/Services')),
(2251.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Transferts et subventions')),
(4836.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Depenses d''investissement')),
(1262.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement interne')),
(3574.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement externe')),
(390.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Autres operations nettes du tresor'));

-- Insertion des suivis financiers depenses economiques pour 2025
INSERT INTO suivi_financier_depense (montant, annee, id_nature) VALUES
(756.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Interets de la dette')),
(3846.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Depenses courantes de solde (hors indemnites)')),
(2304.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Depenses courantes hors solde')),
(244.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Indemnites')),
(504.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Biens/Services')),
(1554.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Transferts et subventions')),
(8537.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Depenses d''investissement')),
(2377.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement interne')),
(6159.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement externe')),
(860.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Autres operations nettes du tresor'));

-- Insertion des natures de depenses par rattachement administratif
INSERT INTO nature_depense (rubrique, id_depense) VALUES
('Presidence de la Republique', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Senat', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Assemblee Nationale', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Haute Cour Constitutionnelle', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Primature', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Conseil du Fampihavanana Malagasy', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Commission electorale Nationale Independante', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Defense Nationale', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere des Affaires etrangeres', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Justice', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Interieur', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''economie et des Finances', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Securite Publique', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Industrialisation et du Commerce', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Decentralisation et de l''Amenagement du Territoire', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere du Travail, de l''Emploi et de la Fonction Publique', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere du Tourisme et de l''Artisanat', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Enseignement Superieur et de la Recherche Scientifique', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Environnement et du Developpement Durable', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''education Nationale', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere des Transports et de la Meteorologie', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Sante Publique', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Communication et de la Culture', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere des Travaux Publics', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere des Mines et des Ressources Strategiques', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''energie et des Hydrocarbures', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Eau, de l''Assainissement et de l''Hygiene', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Agriculture et de l''elevage', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Peche et de l''economie Bleue', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Enseignement Technique et de la Formation Professionnelle', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de l''Artisanat et des Metiers', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere du Developpement Numerique, des Postes et des Telecommunications', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Population et des Solidarites', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere de la Jeunesse et des Sports', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Secretariat d''etat en charge des Nouvelles Villes et de l''Habitat', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Ministere delegue charge de la Gendarmerie', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Secretariat d''etat en charge de la Souverainete Alimentaire', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Haut Conseil pour la Defense de la Democratie et de l''etat de Droit', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Commission Nationale Independante des Droits de l''Homme', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')),
('Haute Cour de Justice', (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'));

-- Insertion des suivis financiers depenses administratives pour 2024
INSERT INTO suivi_financier_depense (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
    (177.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Presidence de la Republique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (22.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Senat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (87.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Assemblee Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (11.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour Constitutionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (278.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Primature' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (6.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Conseil du Fampihavanana Malagasy' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (113.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission electorale Nationale Independante' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (557.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Defense Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (99.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Affaires etrangeres' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (199.6, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (150.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Interieur' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2848.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''economie et des Finances' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (228.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Securite Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (113.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Industrialisation et du Commerce' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (356.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Decentralisation et de l''Amenagement du Territoire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (31.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere du Travail, de l''Emploi et de la Fonction Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (19.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere du Tourisme et de l''Artisanat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (284.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Enseignement Superieur et de la Recherche Scientifique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (94.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Environnement et du Developpement Durable' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (1532.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''education Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (63.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Transports et de la Meteorologie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (716.6, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Sante Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (38.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Communication et de la Culture' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (1217.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Travaux Publics' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (18.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Mines et des Ressources Strategiques' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (407.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''energie et des Hydrocarbures' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (306.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Eau, de l''Assainissement et de l''Hygiene' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (469.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Agriculture et de l''elevage' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (29.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Peche et de l''economie Bleue' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (103.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Enseignement Technique et de la Formation Professionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (8.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere du Developpement Numerique, des Postes et des Telecommunications' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (99.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Population et des Solidarites' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (40.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Jeunesse et des Sports' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (247.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Secretariat d''etat en charge des Nouvelles Villes et de l''Habitat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (414.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere delegue charge de la Gendarmerie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haut Conseil pour la Defense de la Democratie et de l''etat de Droit' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Nationale Independante des Droits de l''Homme' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (3.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour de Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')))
) AS t(montant, annee, id_nature);

-- Insertion des suivis financiers depenses administratives pour 2025
INSERT INTO suivi_financier_depense (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
    (224.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Presidence de la Republique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (21.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Senat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (85.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Assemblee Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (9.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour Constitutionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (339.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Primature' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (6.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Conseil du Fampihavanana Malagasy' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (16.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission electorale Nationale Independante' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (543.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Defense Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (104.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Affaires etrangeres' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (219.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (134.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Interieur' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2332.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''economie et des Finances' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (229.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Securite Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (119.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Industrialisation et du Commerce' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (568.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Decentralisation et de l''Amenagement du Territoire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (33.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere du Travail, de l''Emploi et de la Fonction Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (43.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere du Tourisme et de l''Artisanat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (285.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Enseignement Superieur et de la Recherche Scientifique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (188.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Environnement et du Developpement Durable' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (1562.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''education Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (216.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Transports et de la Meteorologie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (921.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Sante Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (32.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Communication et de la Culture' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2327.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Travaux Publics' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (18.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere des Mines et des Ressources Strategiques' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (1332.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''energie et des Hydrocarbures' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (600.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Eau, de l''Assainissement et de l''Hygiene' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (795.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Agriculture et de l''elevage' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (28.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Peche et de l''economie Bleue' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (94.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Enseignement Technique et de la Formation Professionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de l''Artisanat et des Metiers' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (8.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere du Developpement Numerique, des Postes et des Telecommunications' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (193.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Population et des Solidarites' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (58.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere de la Jeunesse et des Sports' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (138.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Secretariat d''etat en charge des Nouvelles Villes et de l''Habitat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (446.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Ministere delegue charge de la Gendarmerie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (127.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Secretariat d''etat en charge de la Souverainete Alimentaire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haut Conseil pour la Defense de la Democratie et de l''etat de Droit' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (2.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Nationale Independante des Droits de l''Homme' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif'))),
    (3.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour de Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'Depenses par rattachement administratif')))
) AS t(montant, annee, id_nature);

-- Insertion des types de dette
INSERT INTO dette (nature) VALUES
('Dette Exterieure'),
('Dette Interieure');

-- Insertion des suivis de dette pour 2025
INSERT INTO suivi_dette (montant, interet, annee, id) VALUES
(880.9, 314.2, 2025, (SELECT id FROM dette WHERE nature = 'Dette Exterieure')),
(0, 442.2, 2025, (SELECT id FROM dette WHERE nature = 'Dette Interieure'));

-- Insertion des acronymes
INSERT INTO acronyme (libelle, meaning) VALUES
('BAD', 'Banque Africaine pour le Developpement'),
('CRCM', 'Caisse de Retraite Civile et Militaire'),
('HT', 'Hors Taxe'),
('IFPB', 'Impôt Foncier sur la Propriete Bâtie'),
('IFT', 'Impôt Foncier sur le Terrain'),
('IMP', 'Impôt sur les Marches Publics'),
('IR', 'Impôt sur les Revenus'),
('IRCM', 'Impôt Sur les Revenus des Capitaux Mobiliers'),
('KW', 'Kilowatt'),
('LF', 'Loi de Finances'),
('LFI', 'Loi de Finances Initiale'),
('LFR', 'Loi de Finances Rectificative'),
('MW', 'Megawatt'),
('OGT', 'Operations Globales du Tresor'),
('PIB', 'Produit Interieur Brut'),
('PIP', 'Programme d''Investissements Publics'),
('PLF', 'Projet de Loi de Finances'),
('PTF', 'Partenaires Technique et Financier'),
('SADC', 'Southern African Development Community'),
('TAFPB', 'Taxe Annexe à l IFPB'),
('TTM', 'Taxe sur les Transactions Mobiles'),
('TVA', 'Taxe sur la Valeur Ajoutee');