INSERT INTO recette (nature) VALUES 
('Recettes fiscales interieures'),
('Recettes douanieres'),
('Recettes non fiscales'),
('Dons');

INSERT INTO nature_recette (libelle, id_recette) VALUES 
('Impot sur les revenus', 1),
('Impot sur les revenus Salariaux et Assimiles', 1),
('Impot sur les revenus des Capitaux Mobiliers', 1),
('Impot sur les plus-values Immobilieres', 1),
('Impot Synthétique', 1),
('Droit d''Enregistrement', 1),
('Taxe sur la Valeur Ajoutée (y compris Taxe sur les transactions Mobiles)', 1),
('Impot sur les marchés Publics', 1),
('Droit d''Accise (y compris Taxe environnementale)', 1),
('Taxes sur les Assurances', 1),
('Droit de Timbres', 1),
('Autres', 1),
('Droit de douane', 2),
('TVA a l''importation', 2),
('Taxe sur les produits petroliers', 2),
('TVA sur les produits petroliers', 2),
('Droit de navigation', 2),
('Autres', 2),
('Dividendes', 3),
('Productions immobilieres financieres', 3),
('Redevance de peche', 3),
('Redevance miniere', 3),
('Autres redevance', 3),
('Produits des activites et autres', 3),
('Autres', 3),
('Courant', 4),
('Capital', 4);

-- 2024 
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES 
(1179.0, 2024, 1),
(848.2, 2024, 2),
(78.2, 2024, 3),
(14.0, 2024, 4),
(132.3, 2024, 5),
(49.0, 2024, 6),
(1400.2, 2024, 7),
(148.7, 2024, 8),
(754.1, 2024, 9),
(17.2, 2024, 10),
(14.1, 2024, 11),
(1.5, 2024, 12),
(847.5, 2024, 13),
(1768.3, 2024, 14),
(308.0, 2024, 15),
(842.8, 2024, 16),
(1.2, 2024, 17),
(0.2, 2024, 18),
(89.5, 2024, 19),
(0.5, 2024, 20),
(10, 2024, 21),
(84.9, 2024, 22),
(9.7, 2024, 23),
(11.1, 2024, 24),
(140.1, 2024, 25),
(0.3, 2024, 26),
(1086.0, 2024, 27);

-- 2025 
INSERT INTO suivi_financier_recette (montant, annee, id_nature) VALUES 
(1411.4, 2025, 1),
(889.9, 2025, 2),
(93.7, 2025, 3),
(18.3, 2025, 4),
(164.7, 2025, 5),
(62.8, 2025, 6),
(1742.2, 2025, 7),
(250.0, 2025, 8),
(955.4, 2025, 9),
(20.6, 2025, 10),
(16.8, 2025, 11),
(2.7, 2025, 12),
(1010.7, 2025, 13),
(2148.3, 2025, 14),
(326.0, 2025, 15),
(879.0, 2025, 16),
(1.9, 2025, 17),
(0.1, 2025, 18),
(120.0, 2025, 19),
(2.1, 2025, 20),
(15.0, 2025, 21),
(331.2, 2025, 22),
(10, 2025, 23),
(8.1, 2025, 24),
(5.2, 2025, 25),
(31.0, 2025, 26),
(2445.6, 2025, 27);


SELECT sum(sfr.montant) as s
FROM suivi_financier_recette sfr 
JOIN nature_recette nr ON sfr.id_nature = nr.id_nature
JOIN recette r ON nr.id_recette = r.id_recette
WHERE r.id_recette = 1 AND sfr.annee = 2024;
        