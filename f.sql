CREATE TABLE classi (id INT, anno INT, sezione VARCHAR(30), PRIMARY KEY (id));
CREATE TABLE docenti (id INT, cognome VARCHAR(30), nome VARCHAR(30), PRIMARY KEY (id));
CREATE TABLE materie (id INT, nome VARCHAR(30), PRIMARY KEY (id), PRIMARY KEY (id));
CREATE TABLE studenti (id INT, cognome VARCHAR(30), nome VARCHAR(30), classe_id INT, PRIMARY KEY (id), FOREIGN KEY (classe_id) REFERENCES (classi));
CREATE TABLE classe_docente_materia (classe_id INT, docente_id INT, materia_id INT, FOREIGN KEY (classe_id) REFERENCES (classi), FOREIGN KEY (docente_id) REFERENCES (docenti), FOREIGN KEY (materia_id) REFERENCES materie);
