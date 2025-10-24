-- Insertion des catÃ©gories de dÃ©penses
INSERT INTO depense (nature) VALUES
('DÃ©penses par nature Ã©conomique'),
('DÃ©penses par rattachement administratif');

-- Insertion des natures de dÃ©penses Ã©conomiques
INSERT INTO nature_depense (rubrique, id_depense) VALUES
('IntÃ©rÃªts de la dette', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('DÃ©penses courantes de solde (hors indemnitÃ©s)', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('DÃ©penses courantes hors solde', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('IndemnitÃ©s', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('Biens/Services', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('Transferts et subventions', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('DÃ©penses d''investissement', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('PIP sur financement interne', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('PIP sur financement externe', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique')),
('Autres opÃ©rations nettes du trÃ©sor', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par nature Ã©conomique'));

-- Insertion des suivis financiers dÃ©penses Ã©conomiques pour 2024
INSERT INTO suivi_financier_depense (montant, annee, id_nature) VALUES
(672.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'IntÃ©rÃªts de la dette')),
(3814.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'DÃ©penses courantes de solde (hors indemnitÃ©s)')),
(3069.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'DÃ©penses courantes hors solde')),
(244.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'IndemnitÃ©s')),
(573.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Biens/Services')),
(2251.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Transferts et subventions')),
(4836.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'DÃ©penses d''investissement')),
(1262.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement interne')),
(3574.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement externe')),
(390.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Autres opÃ©rations nettes du trÃ©sor'));

-- Insertion des suivis financiers dÃ©penses Ã©conomiques pour 2025
INSERT INTO suivi_financier_depense (montant, annee, id_nature) VALUES
(756.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'IntÃ©rÃªts de la dette')),
(3846.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'DÃ©penses courantes de solde (hors indemnitÃ©s)')),
(2304.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'DÃ©penses courantes hors solde')),
(244.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'IndemnitÃ©s')),
(504.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Biens/Services')),
(1554.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Transferts et subventions')),
(8537.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'DÃ©penses d''investissement')),
(2377.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement interne')),
(6159.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PIP sur financement externe')),
(860.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Autres opÃ©rations nettes du trÃ©sor'));

-- Insertion des natures de dÃ©penses par rattachement administratif
INSERT INTO nature_depense (rubrique, id_depense) VALUES
('PrÃ©sidence de la RÃ©publique', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('SÃ©nat', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('AssemblÃ©e Nationale', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('Haute Cour Constitutionnelle', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('Primature', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('Conseil du Fampihavanana Malagasy', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('Commission Ã‰lectorale Nationale IndÃ©pendante', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la DÃ©fense Nationale', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re des Affaires Ã‰trangÃ¨res', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la Justice', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''IntÃ©rieur', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Ã‰conomie et des Finances', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la SÃ©curitÃ© Publique', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Industrialisation et du Commerce', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la DÃ©centralisation et de l''AmÃ©nagement du Territoire', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re du Travail, de l''Emploi et de la Fonction Publique', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re du Tourisme et de l''Artisanat', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Enseignement SupÃ©rieur et de la Recherche Scientifique', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Environnement et du DÃ©veloppement Durable', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Ã‰ducation Nationale', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re des Transports et de la MÃ©tÃ©orologie', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la SantÃ© Publique', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la Communication et de la Culture', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re des Travaux Publics', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re des Mines et des Ressources StratÃ©giques', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Ã‰nergie et des Hydrocarbures', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Eau, de l''Assainissement et de l''HygiÃ¨ne', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Agriculture et de l''Ã‰levage', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la PÃªche et de l''Ã‰conomie Bleue', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Enseignement Technique et de la Formation Professionnelle', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de l''Artisanat et des MÃ©tiers', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re du DÃ©veloppement NumÃ©rique, des Postes et des TÃ©lÃ©communications', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la Population et des SolidaritÃ©s', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re de la Jeunesse et des Sports', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('SecrÃ©tariat d''Ã‰tat en charge des Nouvelles Villes et de l''Habitat', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('MinistÃ¨re dÃ©lÃ©guÃ© chargÃ© de la Gendarmerie', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('SecrÃ©tariat d''Ã‰tat en charge de la SouverainetÃ© Alimentaire', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('Haut Conseil pour la DÃ©fense de la DÃ©mocratie et de l''Ã‰tat de Droit', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('Commission Nationale IndÃ©pendante des Droits de l''Homme', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')),
('Haute Cour de Justice', (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'));

-- Insertion des suivis financiers dÃ©penses administratives pour 2024
INSERT INTO suivi_financier_depense (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
    (177.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PrÃ©sidence de la RÃ©publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (22.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'SÃ©nat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (87.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'AssemblÃ©e Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (11.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour Constitutionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (278.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Primature' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (6.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Conseil du Fampihavanana Malagasy' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (113.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Ã‰lectorale Nationale IndÃ©pendante' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (557.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la DÃ©fense Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (99.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Affaires Ã‰trangÃ¨res' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (199.6, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (150.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''IntÃ©rieur' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2848.0, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Ã‰conomie et des Finances' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (228.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la SÃ©curitÃ© Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (113.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Industrialisation et du Commerce' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (356.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la DÃ©centralisation et de l''AmÃ©nagement du Territoire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (31.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re du Travail, de l''Emploi et de la Fonction Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (19.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re du Tourisme et de l''Artisanat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (284.2, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Enseignement SupÃ©rieur et de la Recherche Scientifique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (94.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Environnement et du DÃ©veloppement Durable' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (1532.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Ã‰ducation Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (63.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Transports et de la MÃ©tÃ©orologie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (716.6, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la SantÃ© Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (38.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Communication et de la Culture' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (1217.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Travaux Publics' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (18.3, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Mines et des Ressources StratÃ©giques' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (407.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Ã‰nergie et des Hydrocarbures' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (306.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Eau, de l''Assainissement et de l''HygiÃ¨ne' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (469.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Agriculture et de l''Ã‰levage' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (29.9, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la PÃªche et de l''Ã‰conomie Bleue' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (103.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Enseignement Technique et de la Formation Professionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (8.4, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re du DÃ©veloppement NumÃ©rique, des Postes et des TÃ©lÃ©communications' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (99.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Population et des SolidaritÃ©s' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (40.5, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Jeunesse et des Sports' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (247.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'SecrÃ©tariat d''Ã‰tat en charge des Nouvelles Villes et de l''Habitat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (414.8, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re dÃ©lÃ©guÃ© chargÃ© de la Gendarmerie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haut Conseil pour la DÃ©fense de la DÃ©mocratie et de l''Ã‰tat de Droit' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2.1, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Nationale IndÃ©pendante des Droits de l''Homme' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (3.7, 2024, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour de Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')))
) AS t(montant, annee, id_nature);

-- Insertion des suivis financiers dÃ©penses administratives pour 2025
INSERT INTO suivi_financier_depense (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
    (224.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'PrÃ©sidence de la RÃ©publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (21.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'SÃ©nat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (85.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'AssemblÃ©e Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (9.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour Constitutionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (339.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Primature' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (6.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Conseil du Fampihavanana Malagasy' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (16.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Ã‰lectorale Nationale IndÃ©pendante' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (543.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la DÃ©fense Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (104.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Affaires Ã‰trangÃ¨res' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (219.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (134.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''IntÃ©rieur' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2332.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Ã‰conomie et des Finances' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (229.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la SÃ©curitÃ© Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (119.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Industrialisation et du Commerce' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (568.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la DÃ©centralisation et de l''AmÃ©nagement du Territoire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (33.7, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re du Travail, de l''Emploi et de la Fonction Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (43.9, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re du Tourisme et de l''Artisanat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (285.6, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Enseignement SupÃ©rieur et de la Recherche Scientifique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (188.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Environnement et du DÃ©veloppement Durable' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (1562.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Ã‰ducation Nationale' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (216.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Transports et de la MÃ©tÃ©orologie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (921.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la SantÃ© Publique' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (32.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Communication et de la Culture' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2327.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Travaux Publics' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (18.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re des Mines et des Ressources StratÃ©giques' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (1332.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Ã‰nergie et des Hydrocarbures' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (600.2, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Eau, de l''Assainissement et de l''HygiÃ¨ne' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (795.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Agriculture et de l''Ã‰levage' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (28.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la PÃªche et de l''Ã‰conomie Bleue' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (94.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Enseignement Technique et de la Formation Professionnelle' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de l''Artisanat et des MÃ©tiers' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (8.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re du DÃ©veloppement NumÃ©rique, des Postes et des TÃ©lÃ©communications' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (193.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Population et des SolidaritÃ©s' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (58.1, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re de la Jeunesse et des Sports' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (138.8, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'SecrÃ©tariat d''Ã‰tat en charge des Nouvelles Villes et de l''Habitat' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (446.4, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'MinistÃ¨re dÃ©lÃ©guÃ© chargÃ© de la Gendarmerie' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (127.3, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'SecrÃ©tariat d''Ã‰tat en charge de la SouverainetÃ© Alimentaire' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haut Conseil pour la DÃ©fense de la DÃ©mocratie et de l''Ã‰tat de Droit' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (2.0, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Commission Nationale IndÃ©pendante des Droits de l''Homme' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif'))),
    (3.5, 2025, (SELECT id_nature FROM nature_depense WHERE rubrique = 'Haute Cour de Justice' AND id_depense = (SELECT id_depense FROM depense WHERE nature = 'DÃ©penses par rattachement administratif')))
) AS t(montant, annee, id_nature);

-- Insertion des types de dette
INSERT INTO dette (nature) VALUES
('Dette ExtÃ©rieure'),
('Dette IntÃ©rieure');

-- Insertion des suivis de dette pour 2025
INSERT INTO suivi_dette (montant, interet, annee, id) VALUES
(880.9, 314.2, 2025, (SELECT id FROM dette WHERE nature = 'Dette ExtÃ©rieure')),
(0, 442.2, 2025, (SELECT id FROM dette WHERE nature = 'Dette IntÃ©rieure'));

-- Insertion des acronymes
INSERT INTO acronyme (libelle, meaning) VALUES
('BAD', 'Banque Africaine pour le DÃ©veloppement'),
('CRCM', 'Caisse de Retraite Civile et Militaire'),
('HT', 'Hors Taxe'),
('IFPB', 'ImpÃ´t Foncier sur la PropriÃ©tÃ© BÃ¢tie'),
('IFT', 'ImpÃ´t Foncier sur le Terrain'),
('IMP', 'ImpÃ´t sur les MarchÃ©s Publics'),
('IR', 'ImpÃ´t sur les Revenus'),
('IRCM', 'ImpÃ´t Sur les Revenus des Capitaux Mobiliers'),
('KW', 'Kilowatt'),
('LF', 'Loi de Finances'),
('LFI', 'Loi de Finances Initiale'),
('LFR', 'Loi de Finances Rectificative'),
('MW', 'MÃ©gawatt'),
('OGT', 'OpÃ©rations Globales du TrÃ©sor'),
('PIB', 'Produit IntÃ©rieur Brut'),
('PIP', 'Programme d''Investissements Publics'),
('PLF', 'Projet de Loi de Finances'),
('PTF', 'Partenaires Technique et Financier'),
('SADC', 'Southern African Development Community'),
('TAFPB', 'Taxe Annexe Ã  l''IFPB'),
('TTM', 'Taxe sur les Transactions Mobiles'),
('TVA', 'Taxe sur la Valeur AjoutÃ©e');
