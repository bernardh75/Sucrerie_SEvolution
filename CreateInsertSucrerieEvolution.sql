CREATE TABLE bonbon_piece (
	reference char(4),
	nombre_piece int NOT NULL,
	poids_app_piece int NOT NULL,
	CONSTRAINT pk_bonbon_piece primary key (reference)
);

CREATE TABLE bonbon_poids (
	reference char(4),
	poids int NOT NULL,
	CONSTRAINT pk_bonbon_poids primary key (reference)
);

CREATE TABLE gateau_poids (
	reference char(4),
	poids int NOT NULL,
	date_peremption date NOT NULL,
	CONSTRAINT pk_gateau_poids primary key (reference)
);

ALTER TABLE bonbon_poids 
ADD CONSTRAINT fk_bonbon_poids 
foreign key (reference) references produit(reference);

ALTER TABLE bonbon_piece 
ADD CONSTRAINT fk_bonbon_piece 
foreign key (reference) references produit(reference);

ALTER TABLE gateau_poids 
ADD CONSTRAINT fk_gateau_poids 
foreign key (reference) references produit(reference);

INSERT INTO produit VALUES (5010, 'beready', 1);
INSERT INTO gateau_poids VALUES (5010, 10, '2018-07-24');