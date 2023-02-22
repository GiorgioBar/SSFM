DROP TABLE FP;
DROP TABLE P;
DROP TABLE F;

CREATE TABLE P (
  CodP CHAR(4) NOT NULL,
  NomeP CHAR VARYING(30) NOT NULL,
  Colore CHAR VARYING(20) DEFAULT 'Rosso' NOT NULL,
  Peso INTEGER,
  Magazzino CHAR VARYING(30),
  PRIMARY KEY (CodP)
);

CREATE TABLE F (
  CodF CHAR(4) NOT NULL,
  NomeF CHAR VARYING(30) NOT NULL,
  Rating INTEGER,
  Sede CHAR VARYING(30),
  PRIMARY KEY (CodF)
);

CREATE TABLE FP (
  CodF CHAR(4) NOT NULL,
  CodP CHAR(4) NOT NULL,
  Qta INTEGER CHECK (Qta IS NOT NULL AND Qta >0),
  PRIMARY KEY (CodF, CodP),
  FOREIGN KEY (CodF) REFERENCES F(CodF)
  ON DELETE CASCADE,
  FOREIGN KEY (CodP) REFERENCES P(CodP)
  ON DELETE CASCADE
);

INSERT INTO P (CodP, NomeP, Colore, Peso, Magazzino) VALUES ('P1', 'Trion', 'Rosso', 40, 'Torino');
INSERT INTO P (CodP, NomeP, Colore, Peso, Magazzino) VALUES ('P2', 'Speed', 'Giallo', 48, 'Milano');
INSERT INTO P (CodP, NomeP, Colore, Peso, Magazzino) VALUES ('P3', 'Airtech', 'Blu', 48, 'Roma');
INSERT INTO P (CodP, NomeP, Colore, Peso, Magazzino) VALUES ('P4', 'Airtech', 'Blu', 44, 'Torino');
INSERT INTO P (CodP, NomeP, Colore, Magazzino) VALUES ('P5', 'Futura', 'Blu', 'Milano');
INSERT INTO P (CodP, NomeP, Colore, Peso, Magazzino) VALUES ('P6', 'Zen', 'Rosso', 42, 'Torino');

INSERT INTO F (CodF, NomeF, Rating, Sede) VALUES ('F1', 'Atlante', 2, 'Torino');
INSERT INTO F (CodF, NomeF, Rating, Sede) VALUES ('F2', 'Oceano', 1, 'Milano');
INSERT INTO F (CodF, NomeF, Rating, Sede) VALUES ('F3', 'Crono', 3, 'Milano');
INSERT INTO F (CodF, NomeF, Rating, Sede) VALUES ('F4', 'Prometeo', 2, 'Torino');
INSERT INTO F (CodF, NomeF, Rating, Sede) VALUES ('F5', 'Ceo', 3, 'Venezia');

INSERT INTO FP (CodF, CodP, Qta) VALUES ('F1', 'P1', 300);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F1', 'P2', 200);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F1', 'P3', 400);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F1', 'P4', 200);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F1', 'P5', 100);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F1', 'P6', 100);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F2', 'P1', 300);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F2', 'P2', 400);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F3', 'P2', 200);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F4', 'P3', 200);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F4', 'P4', 300);
INSERT INTO FP (CodF, CodP, Qta) VALUES ('F4', 'P5', 400);
