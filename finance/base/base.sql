CREATE TABLE recette(
                        id_recette SERIAL,
                        nature VARCHAR(100) ,
                        PRIMARY KEY(id_recette)
);

CREATE TABLE nature_recette(
                               id_nature SERIAL,
                               libelle VARCHAR(100) ,
                               id_recette INTEGER,
                               PRIMARY KEY(id_nature),
                               FOREIGN KEY(id_recette) REFERENCES recette(id_recette)
);

CREATE TABLE suivi_financier_recette(
                                        id_suivi_recette SERIAL,
                                        montant NUMERIC(15,2)  ,
                                        annee INTEGER,
                                        id_nature INTEGER,
                                        PRIMARY KEY(id_suivi_recette),
                                        FOREIGN KEY(id_nature) REFERENCES nature_recette(id_nature)
);

CREATE TABLE depense(
                        id_depense SERIAL,
                        nature VARCHAR(50) ,
                        PRIMARY KEY(id_depense)
);

CREATE TABLE nature_depense(
                               id_nature SERIAL,
                               rubrique VARCHAR(100) ,
                               id_depense INTEGER,
                               PRIMARY KEY(id_nature),
                               FOREIGN KEY(id_depense) REFERENCES depense(id_depense)
);

CREATE TABLE suivi_financier_depense(
                                        id_suivi SERIAL,
                                        montant NUMERIC(15,2)  ,
                                        annee INTEGER,
                                        id_nature INTEGER,
                                        PRIMARY KEY(id_suivi),
                                        FOREIGN KEY(id_nature) REFERENCES nature_depense(id_nature)
);

CREATE TABLE dette(
                      id SERIAL,
                      nature VARCHAR(50) ,
                      PRIMARY KEY(id)
);

CREATE TABLE indicateur(
                           id SERIAL,
                           libelle VARCHAR(50) ,
                           PRIMARY KEY(id)
);

CREATE TABLE suivi_indicateur(
                                 id_suivi SERIAL,
                                 taux_valeur NUMERIC(15,2)  ,
                                 annee INTEGER,
                                 id INTEGER,
                                 PRIMARY KEY(id_suivi),
                                 FOREIGN KEY(id) REFERENCES indicateur(id)
);

CREATE TABLE acronyme(
                         id SERIAL,
                         libelle VARCHAR(50) ,
                         meaning VARCHAR(100) ,
                         PRIMARY KEY(id)
);

CREATE TABLE perspective_economique(
                                       id SERIAL,
                                       libelle VARCHAR(100) ,
                                       PRIMARY KEY(id)
);

CREATE TABLE nature_perspective(
                                   id_nature SERIAL,
                                   rubrique VARCHAR(100) ,
                                   id INTEGER,
                                   PRIMARY KEY(id_nature),
                                   FOREIGN KEY(id) REFERENCES perspective_economique(id)
);

CREATE TABLE suivi_economique(
                                 id_suivi SERIAL,
                                 montant NUMERIC(15,2)  ,
                                 annee INTEGER,
                                 id_nature INTEGER,
                                 PRIMARY KEY(id_suivi),
                                 FOREIGN KEY(id_nature) REFERENCES nature_perspective(id_nature)
);

CREATE TABLE secteur(
                        id_secteur SERIAL,
                        type VARCHAR(50) ,
                        PRIMARY KEY(id_secteur)
);

CREATE TABLE rubrique_secteur(
                                 id_rubrique SERIAL,
                                 rubrique VARCHAR(50) ,
                                 id_secteur INTEGER,
                                 PRIMARY KEY(id_rubrique),
                                 FOREIGN KEY(id_secteur) REFERENCES secteur(id_secteur)
);

CREATE TABLE suivi_secteur(
                              id_suivi SERIAL,
                              montant NUMERIC(15,2)  ,
                              annee INTEGER,
                              id_rubrique INTEGER,
                              PRIMARY KEY(id_suivi),
                              FOREIGN KEY(id_rubrique) REFERENCES rubrique_secteur(id_rubrique)
);

CREATE TABLE suivi_dette(
                            id_suivi SERIAL,
                            montant NUMERIC(15,2)  ,
                            interet NUMERIC(15,2)  ,
                            annee INTEGER,
                            id INTEGER,
                            PRIMARY KEY(id_suivi),
                            FOREIGN KEY(id) REFERENCES dette(id)
);
