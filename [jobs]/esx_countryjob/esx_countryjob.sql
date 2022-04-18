--USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_country', '國軍', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_country', '國軍', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_country', '國軍', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('country','國軍')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('country',0,'recruit','Recrue',20,'{}','{}'),
	('country',1,'officer','Officier',40,'{}','{}'),
	('country',2,'sergeant','Sergent',60,'{}','{}'),
	('country',3,'lieutenant','Lieutenant',85,'{}','{}'),
	('country',4,'boss','Commandant',100,'{}','{}')
;

