-- Insertion des catégories de recettes
INSERT INTO recette (nature) VALUES
('Recettes fiscales Intérieures'),
('Recettes douanières');

-- Insertion des natures de recettes fiscales intérieures
INSERT INTO nature_recette (libelle, id_recette) VALUES
('Impôt sur les revenus', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Impôt sur les revenus Salariaux et Assimilés', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Impôt sur les revenus des Capitaux Mobiliers', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Impôt sur les plus-values Immobilières', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Impôt Synthétique', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Droit d''Enregistrement', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Taxe sur la Valeur Ajoutée', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Impôt sur les marchés Publics', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Droit d''Accise', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Taxes sur les Assurances', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Droit de Timbres', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures')),
('Autres', (SELECT id_recette FROM recette WHERE nature = 'Recettes fiscales Intérieures'));

-- Insertion des natures de recettes douanières
INSERT INTO nature_recette (libelle, id_recette) VALUES
('Droit de douane', (SELECT id_recette FROM recette WHERE nature = 'Recettes douanières')),
('TVA à l''importation', (SELECT id_recette FROM recette WHERE nature = 'Recettes douanières')),
('Taxe sur les produits pétroliers', (SELECT id_recette FROM recette WHERE nature = 'Recettes douanières')),
('TVA sur les produits pétroliers', (SELECT id_recette FROM recette WHERE nature = 'Recettes douanières')),
('Droit de navigation', (SELECT id_recette FROM recette WHERE nature = 'Recettes douanières')),
('Autres droits et taxes', (SELECT id_recette FROM recette WHERE nature = 'Recettes douanières'));

-- Insertion des suivis financiers recettes fiscales intérieures pour 2024
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
(1179.0, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les revenus')),
(848.2, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les revenus Salariaux et Assimilés')),
(78.2, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les revenus des Capitaux Mobiliers')),
(14.0, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les plus-values Immobilières')),
(132.3, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt Synthétique')),
(49.0, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit d''Enregistrement')),
(1400.2, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Taxe sur la Valeur Ajoutée')),
(148.7, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les marchés Publics')),
(754.1, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit d''Accise')),
(17.2, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Taxes sur les Assurances')),
(14.1, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit de Timbres')),
(1.5, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Autres'));

-- Insertion des suivis financiers recettes fiscales intérieures pour 2025
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
(1411.4, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les revenus')),
(889.9, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les revenus Salariaux et Assimilés')),
(93.7, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les revenus des Capitaux Mobiliers')),
(18.3, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les plus-values Immobilières')),
(164.7, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt Synthétique')),
(62.8, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit d''Enregistrement')),
(1742.2, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Taxe sur la Valeur Ajoutée')),
(250.0, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Impôt sur les marchés Publics')),
(955.4, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit d''Accise')),
(20.6, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Taxes sur les Assurances')),
(16.8, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit de Timbres')),
(2.7, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Autres'));

-- Insertion des suivis financiers recettes douanières pour 2024
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
(847.5, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit de douane')),
(1768.3, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'TVA à l''importation')),
(308.0, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Taxe sur les produits pétroliers')),
(842.8, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'TVA sur les produits pétroliers')),
(1.2, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit de navigation')),
(0.2, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Autres droits et taxes'));

-- Insertion des suivis financiers recettes douanières pour 2025
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
(1010.7, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Droit de douane'));


-- Insertion de la catégorie recettes non fiscales
INSERT INTO recette (nature) VALUES
    ('Recettes Non Fiscales');

-- Insertion de la catégorie dons
INSERT INTO recette (nature) VALUES
    ('Dons');

-- Insertion des natures de recettes non fiscales
INSERT INTO nature_recette (libelle, id_recette) VALUES
                                                     ('Dividendes', (SELECT id_recette FROM recette WHERE nature = 'Recettes Non Fiscales')),
                                                     ('Productions immobilières financières', (SELECT id_recette FROM recette WHERE nature = 'Recettes Non Fiscales')),
                                                     ('Redevance de pêche', (SELECT id_recette FROM recette WHERE nature = 'Recettes Non Fiscales')),
                                                     ('Redevance minières', (SELECT id_recette FROM recette WHERE nature = 'Recettes Non Fiscales')),
                                                     ('Autres redevance', (SELECT id_recette FROM recette WHERE nature = 'Recettes Non Fiscales')),
                                                     ('Produits des activités et autres', (SELECT id_recette FROM recette WHERE nature = 'Recettes Non Fiscales')),
                                                     ('Autres recettes non fiscales', (SELECT id_recette FROM recette WHERE nature = 'Recettes Non Fiscales'));

-- Insertion des natures de dons
INSERT INTO nature_recette (libelle, id_recette) VALUES
                                                     ('Dons Courants', (SELECT id_recette FROM recette WHERE nature = 'Dons')),
                                                     ('Dons Capital', (SELECT id_recette FROM recette WHERE nature = 'Dons'));

-- Insertion des suivis financiers recettes non fiscales pour 2024
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
                                                                    (89.5, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Dividendes')),
                                                                    (0.5, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Productions immobilières financières')),
                                                                    (10.0, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Redevance de pêche')),
                                                                    (84.9, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Redevance minières')),
                                                                    (9.7, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Autres redevance')),
                                                                    (11.1, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Produits des activités et autres')),
                                                                    (140.1, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Autres recettes non fiscales'));

-- Insertion des suivis financiers recettes non fiscales pour 2025
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
                                                                    (120.2, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Dividendes')),
                                                                    (2.1, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Productions immobilières financières')),
                                                                    (15.0, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Redevance de pêche')),
                                                                    (331.2, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Redevance minières')),
                                                                    (10.0, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Autres redevance')),
                                                                    (8.1, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Produits des activités et autres')),
                                                                    (5.2, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Autres recettes non fiscales'));

-- Insertion des suivis financiers dons pour 2024
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
                                                                    (0.3, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Dons Courants')),
                                                                    (1086.0, 2024, (SELECT id_nature FROM nature_recette WHERE libelle = 'Dons Capital'));

-- Insertion des suivis financiers dons pour 2025
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES
                                                                    (31.0, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Dons Courants')),
                                                                    (2445.6, 2025, (SELECT id_nature FROM nature_recette WHERE libelle = 'Dons Capital'));

