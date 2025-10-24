-- Insertion des prÃ©visions macroÃ©conomiques
INSERT INTO perspective_economique (libelle) VALUES
                                                 ('PIB nominal (milliards d''Ariary)'),
                                                 ('Taux de croissance Ã©conomique'),
                                                 ('Indice des prix Ã  la consommation (fin de pÃ©riode)'),
                                                 ('Ratio de dÃ©penses publiques (% PIB)'),
                                                 ('Solde global (base caisse)'),
                                                 ('Solde primaire (base caisse)'),
                                                 ('Taux de change Dollars/Ariary (moyenne pÃ©riode)'),
                                                 ('Taux de change Euro/Ariary (moyenne pÃ©riode)'),
                                                 ('Taux d''investissement Public (% PIB)'),
                                                 ('Taux d''investissement PrivÃ© (% PIB)'),
                                                 ('Taux de pression fiscale (% PIB)');

-- Insertion des suivis Ã©conomiques pour 2024
INSERT INTO suivi_economique (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
                                           (78945.4, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'PIB nominal (milliards d''Ariary)')),
                                           (4.4, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de croissance Ã©conomique')),
                                           (8.2, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Indice des prix Ã  la consommation (fin de pÃ©riode)')),
                                           (16.2, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Ratio de dÃ©penses publiques (% PIB)')),
                                           (-4.3, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Solde global (base caisse)')),
                                           (214.2, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Solde primaire (base caisse)')),
                                           (4508.6, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de change Dollars/Ariary (moyenne pÃ©riode)')),
                                           (4905.5, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de change Euro/Ariary (moyenne pÃ©riode)')),
                                           (6.1, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Taux d''investissement Public (% PIB)')),
                                           (14.6, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Taux d''investissement PrivÃ© (% PIB)')),
                                           (10.6, 2024, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de pression fiscale (% PIB)'))
                                      ) AS t(montant, annee, id_nature);

-- Insertion des suivis Ã©conomiques pour 2025
INSERT INTO suivi_economique (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
                                           (88851.6, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'PIB nominal (milliards d''Ariary)')),
                                           (5.0, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de croissance Ã©conomique')),
                                           (7.1, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Indice des prix Ã  la consommation (fin de pÃ©riode)')),
                                           (18.4, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Ratio de dÃ©penses publiques (% PIB)')),
                                           (-4.1, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Solde global (base caisse)')),
                                           (1097.6, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Solde primaire (base caisse)')),
                                           (4688.8, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de change Dollars/Ariary (moyenne pÃ©riode)')),
                                           (5275.2, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de change Euro/Ariary (moyenne pÃ©riode)')),
                                           (9.6, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Taux d''investissement Public (% PIB)')),
                                           (12.0, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Taux d''investissement PrivÃ© (% PIB)')),
                                           (11.2, 2025, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de pression fiscale (% PIB)'))
                                      ) AS t(montant, annee, id_nature);

-- Insertion des suivis Ã©conomiques pour 2026
INSERT INTO suivi_economique (montant, annee, id_nature)
SELECT montant, annee, id_nature FROM (VALUES
                                           (99826.3, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'PIB nominal (milliards d''Ariary)')),
                                           (5.2, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de croissance Ã©conomique')),
                                           (7.2, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Indice des prix Ã  la consommation (fin de pÃ©riode)')),
                                           (17.8, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Ratio de dÃ©penses publiques (% PIB)')),
                                           (-4.1, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Solde global (base caisse)')),
                                           (866.0, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Solde primaire (base caisse)')),
                                           (4853.2, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de change Dollars/Ariary (moyenne pÃ©riode)')),
                                           (5532.7, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de change Euro/Ariary (moyenne pÃ©riode)')),
                                           (8.3, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Taux d''investissement Public (% PIB)')),
                                           (13.7, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Taux d''investissement PrivÃ© (% PIB)')),
                                           (11.8, 2026, (SELECT id FROM perspective_economique WHERE libelle = 'Taux de pression fiscale (% PIB)'))
                                      ) AS t(montant, annee, id_nature);

-- Insertion des secteurs
INSERT INTO secteur (type) VALUES
                               ('SECTEUR PRIMAIRE'),
                               ('SECTEUR SECONDAIRE'),
                               ('SECTEUR TERTIAIRE');

-- Insertion des rubriques secteur
INSERT INTO rubrique_secteur (rubrique, id_secteur) VALUES
                                                        ('Agriculture', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR PRIMAIRE')),
                                                        ('Ã‰levage et pÃªche', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR PRIMAIRE')),
                                                        ('Sylviculture', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR PRIMAIRE')),
                                                        ('Industrie extractive', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('Alimentaire, boisson, tabac', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('Textile', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('Bois, papiers, imprimerie', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('MatÃ©riaux de construction', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('Industrie mÃ©tallique', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('Machine, matÃ©riels Ã©lectriques', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('Industries diverses', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('Ã‰lectricitÃ©, eau, gaz', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE')),
                                                        ('BTP', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Commerce, entretiens, rÃ©parations', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('HÃ´tel, restaurant', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Transport', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Poste et tÃ©lÃ©communication', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Banque, assurance', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Services aux entreprises', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Administration', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Ã‰ducation', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('SantÃ©', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE')),
                                                        ('Services rendus aux mÃ©nages', (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE'));

-- Insertion des suivis sectoriels pour 2024
INSERT INTO suivi_secteur (montant, annee, id_rubrique) VALUES
                                                            (5.3, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SECTEUR PRIMAIRE' AND id_secteur = (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR PRIMAIRE'))),
                                                            (6.0, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Agriculture')),
                                                            (3.9, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Ã‰levage et pÃªche')),
                                                            (1.0, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Sylviculture')),
                                                            (-3.3, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SECTEUR SECONDAIRE' AND id_secteur = (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE'))),
                                                            (-20.8, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Industrie extractive')),
                                                            (0.9, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Alimentaire, boisson, tabac')),
                                                            (31.6, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Textile')),
                                                            (0.4, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Bois, papiers, imprimerie')),
                                                            (7.9, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'MatÃ©riaux de construction')),
                                                            (7.2, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Industrie mÃ©tallique')),
                                                            (3.1, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Machine, matÃ©riels Ã©lectriques')),
                                                            (0.5, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Industries diverses')),
                                                            (3.9, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Ã‰lectricitÃ©, eau, gaz')),
                                                            (5.0, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SECTEUR TERTIAIRE' AND id_secteur = (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE'))),
                                                            (3.2, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'BTP')),
                                                            (4.2, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Commerce, entretiens, rÃ©parations')),
                                                            (14.7, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'HÃ´tel, restaurant')),
                                                            (7.0, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Transport')),
                                                            (13.4, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Poste et tÃ©lÃ©communication')),
                                                            (5.3, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Banque, assurance')),
                                                            (2.3, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Services aux entreprises')),
                                                            (1.7, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Administration')),
                                                            (1.7, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Ã‰ducation')),
                                                            (1.8, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SantÃ©')),
                                                            (1.3, 2024, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Services rendus aux mÃ©nages'));

-- Insertion des suivis sectoriels pour 2025
INSERT INTO suivi_secteur (montant, annee, id_rubrique) VALUES
                                                            (7.8, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SECTEUR PRIMAIRE' AND id_secteur = (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR PRIMAIRE'))),
                                                            (9.5, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Agriculture')),
                                                            (4.0, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Ã‰levage et pÃªche')),
                                                            (1.1, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Sylviculture')),
                                                            (3.4, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SECTEUR SECONDAIRE' AND id_secteur = (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR SECONDAIRE'))),
                                                            (4.0, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Industrie extractive')),
                                                            (2.4, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Alimentaire, boisson, tabac')),
                                                            (4.0, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Textile')),
                                                            (0.7, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Bois, papiers, imprimerie')),
                                                            (8.0, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'MatÃ©riaux de construction')),
                                                            (7.3, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Industrie mÃ©tallique')),
                                                            (3.2, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Machine, matÃ©riels Ã©lectriques')),
                                                            (0.6, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Industries diverses')),
                                                            (4.0, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Ã‰lectricitÃ©, eau, gaz')),
                                                            (5.4, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SECTEUR TERTIAIRE' AND id_secteur = (SELECT id_secteur FROM secteur WHERE type = 'SECTEUR TERTIAIRE'))),
                                                            (3.6, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'BTP')),
                                                            (4.3, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Commerce, entretiens, rÃ©parations')),
                                                            (14.9, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'HÃ´tel, restaurant')),
                                                            (7.2, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Transport')),
                                                            (13.7, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Poste et tÃ©lÃ©communication')),
                                                            (6.1, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Banque, assurance')),
                                                            (2.4, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Services aux entreprises')),
                                                            (1.9, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Administration')),
                                                            (1.8, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Ã‰ducation')),
                                                            (1.9, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'SantÃ©')),
                                                            (1.4, 2025, (SELECT id_rubrique FROM rubrique_secteur WHERE rubrique = 'Services rendus aux mÃ©nages'));
