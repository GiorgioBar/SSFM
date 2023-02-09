DROP TABLE journal;

CREATE TABLE journal (
  journal_id INTEGER NOT NULL,
  journal_name CHAR(45) NOT NULL,
  publisher CHAR(20) DEFAULT 'Springer Nature' NOT NULL,
  PRIMARY KEY (journal_id)
);

DROP TABLE article;

CREATE TABLE article (
  article_id CHAR(20) NOT NULL,
  article_title CHAR(120) NOT NULL,
  year SMALLINT DEFAULT NULL,
  journal_id INTEGER NOT NULL,
  topic CHAR(30) NOT NULL,
  PRIMARY KEY (article_id)
);

DROP TABLE author;

CREATE TABLE author (
  author_id CHAR(12) NOT NULL,
  name CHAR(35) NOT NULL,
  affiliation_id INTEGER NOT NULL,
  h_index SMALLINT DEFAULT NULL,
  PRIMARY KEY (author_id)
);

DROP TABLE publication;

CREATE TABLE publication (
  author_id CHAR(12) NOT NULL,
  journal_id INTEGER NOT NULL,
  article_id CHAR(20) NOT NULL,
  PRIMARY KEY (author_id, journal_id, article_id)
);

INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1001, 'Neurocomputing', 'Elsevier');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1002, 'IEEE Access', 'IEEE');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1003, 'Complexity', 'Hindawi');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1004, 'Concurrency Computation', 'Wiley-Blackwell');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1005, 'Neural Processing Letters', 'Springer Nature');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1006, 'Artificial Intelligence Review', 'Springer Nature');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1007, 'BMC Bioinformatics', 'Springer Nature');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1008, 'Knowledge-Based Systems', 'Elsevier');
INSERT INTO journal (journal_id, journal_name, publisher) VALUES (1009, 'Computational Statistics and Data Analysis', 'Elsevier');

INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('7005396035', 'Mei, Tao', 60029386, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('7005827443', 'Ling, Qiang', 60019118, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('36456529400', 'Yao, Ting', 60098464, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('56303136700', 'Song, Kaikai', 60019118, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('57194331562', 'Li, Jiatong', 60019118, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('57203790978', 'Li, Feng', 60019118, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('56770718300', 'Long, Fei', 116667023, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('36618247800', 'Wang, Junping', 60018486, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('8854170600', 'Cheng, Zunshui', 60019496, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('57197719647', 'Xie, Konghe', 60019496, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('57190886037', 'Wang, Tianshun', 60019496, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('7403354075', 'Cao, Jinde', 60005244, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('55497209800', 'Li, Ning', 60108762, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('8626988300', 'Paramasivam, Kuppusamy', 112804735, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('57204427269', 'Suresh Kumar, N.', 112955239, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('56086192100', 'Li, Ruoxia', 60000174, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('57196019442', 'Xing, Frank Z.', 60005510, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('56140547500', 'Cambria, Erik', 60005510, 39);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('8214812500', 'Welsch, Roy E.', 60022195, 18);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('57189025875', 'Li, Fei', 60029306, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('55668233900', 'Zhang, Meishan', 60033495, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('7202721096', 'Fu, Guohong', 60033495, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('8698003700', 'Ji, Donghong', 60011235, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('35273382000', 'Pan, Xiaoyong', 60032114, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('8964541700', 'Shen, Hongbin', 60025084, 0);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('36063436900', 'Kim, Sun', 60013682, 20);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('7004145222', 'Wilbur, W. John', 60001536, 36);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('12646151300', 'Chaturvedi, Iti', 60005510, 9);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('7006735298', 'Ong, Yew Soon', 60078616, 36);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('7004570429', 'Tsang, Ivor Wai Hung', 60023932, 43);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('35729181200', 'Menjoge, Rajiv S.', 60022195, 1);
INSERT INTO author (author_id, name, affiliation_id, h_index) VALUES ('55183704300', 'Nguyen, Tri Dung', 60025225, 6);

INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('neucom.2018.05.104', 'Boosting image sentiment analysis with visual attention', 2018, 1001, 'DataMining');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('neucom.2017.04.065', 'Detecting shot boundary with sparse coding for video summarization', 2017, 1001, 'NeuralNetworks');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('ACCESS.2018.2862464', 'Discriminative deep feature learning for semantic-based image retrieval', 2018, 1002, 'NeuralNetworks');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('neucom.2018.09.063', 'Stability and Hopf bifurcation of three-triangle neural networks with delays', 2018, 1001, 'NeuralNetworks');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('neucom.2018.09.030', 'Global dissipativity analysis of quaternion-valued memristor-based neural networks with proportional delay', 2018, 1001, 'NeuralNetworks');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('cpe.4741', 'Energy efficient low-power full-adder by 65 nm CMOS technology in ALU', 2018, 1004, 'EnergyEfficiency');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('s11063-017-9689-0', 'Finite-Time and Fixed-Time Stabilization Control of Delayed Memristive Neural Networks', 2018, 1005, 'NeuralNetworks');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('s10462-017-9588-9', 'Natural language based financial forecasting: a survey', 2018, 1006, 'DataMining');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('s12859-017-1609-9', 'A neural joint model for entity and relation extraction from biomedical text', 2017, 1007, 'NeuralNetworks');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('s12859-017-1561-8', 'RNA-protein binding motifs mining with a new hybrid deep learning based cross-domain knowledge integration approach', 2017, 1007, 'DataMining');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('1471-2105-12-S8-S9', 'Classifying protein-protein interaction articles using word and syntactic features', 2011, 1007, 'DataMining');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('j.knosys.2016.07.019', 'Learning word dependencies in text by means of a deep recurrent belief network', 2016, 1008, 'GaussianNetworks');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('j.csda.2010.02.014', 'A diagnostic method for simultaneous feature selection and outlier identification in linear regression', 2010, 1009, 'FeatureExtraction');
INSERT INTO article (article_id, article_title, year, journal_id, topic) VALUES ('j.csda.2009.09.037', 'Outlier detection and least trimmed squares approximation using semi-definite programming', 2010, 1009, 'LinearProgramming');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7005396035', 1001, 'neucom.2018.05.104');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7005827443', 1001, 'neucom.2018.05.104');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('36456529400', 1001, 'neucom.2018.05.104');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('56303136700', 1001, 'neucom.2018.05.104');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('57194331562', 1001, 'neucom.2017.04.065');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('36456529400', 1001, 'neucom.2017.04.065');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7005827443', 1001, 'neucom.2017.04.065');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7005396035', 1001, 'neucom.2017.04.065');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('56303136700', 1002, 'ACCESS.2018.2862464');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('57203790978', 1002, 'ACCESS.2018.2862464');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('56770718300', 1002, 'ACCESS.2018.2862464');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('36618247800', 1002, 'ACCESS.2018.2862464');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7005827443', 1002, 'ACCESS.2018.2862464');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8854170600', 1001, 'neucom.2018.09.063');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('57197719647', 1001, 'neucom.2018.09.063');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('57190886037', 1001, 'neucom.2018.09.063');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7403354075', 1001, 'neucom.2018.09.063');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('55497209800', 1001, 'neucom.2018.09.030');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7403354075', 1001, 'neucom.2018.09.030');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('57204427269', 1004, 'cpe.4741');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8626988300', 1004, 'cpe.4741');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('56086192100', 1005, 's11063-017-9689-0');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7403354075', 1005, 's11063-017-9689-0');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('57196019442', 1006, 's10462-017-9588-9');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('56140547500', 1006, 's10462-017-9588-9');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8214812500', 1006, 's10462-017-9588-9');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('57189025875', 1007, 's12859-017-1609-9');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('55668233900', 1007, 's12859-017-1609-9');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7202721096', 1007, 's12859-017-1609-9');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8698003700', 1007, 's12859-017-1609-9');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('35273382000', 1007, 's12859-017-1561-8');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8964541700', 1007, 's12859-017-1561-8');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('36063436900', 1007, '1471-2105-12-S8-S9');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7004145222', 1007, '1471-2105-12-S8-S9');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('12646151300', 1008, 'j.knosys.2016.07.019');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7006735298', 1008, 'j.knosys.2016.07.019');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('7004570429', 1008, 'j.knosys.2016.07.019');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8214812500', 1008, 'j.knosys.2016.07.019');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('56140547500', 1008, 'j.knosys.2016.07.019');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8214812500', 1009, 'j.csda.2010.02.014');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('35729181200', 1009, 'j.csda.2010.02.014');

INSERT INTO publication (author_id, journal_id, article_id) VALUES ('8214812500', 1009, 'j.csda.2009.09.037');
INSERT INTO publication (author_id, journal_id, article_id) VALUES ('55183704300', 1009, 'j.csda.2009.09.037');

