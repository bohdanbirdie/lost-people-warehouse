-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-05-19 10:47:34.295

-- foreign keys
ALTER TABLE Lost_report DROP CONSTRAINT Lost_report_Criminal_article;

ALTER TABLE Lost_report DROP CONSTRAINT Lost_report_Location;

ALTER TABLE Lost_report DROP CONSTRAINT Lost_report_Lost_person;

ALTER TABLE Lost_report DROP CONSTRAINT Lost_report_Police_department;

ALTER TABLE Lost_report DROP CONSTRAINT Lost_report_Restraint;

ALTER TABLE Lost_report DROP CONSTRAINT Lost_report_Time;

-- tables
DROP TABLE Criminal_article;

DROP TABLE Location;

DROP TABLE Lost_person;

DROP TABLE Lost_report;

DROP TABLE Police_department;

DROP TABLE Restraint;

DROP TABLE Time;

-- End of file.

