-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-05-19 10:47:34.295

-- tables
-- Table: Criminal_article
CREATE TABLE Criminal_article (
    idArticle int  NOT NULL identity,
    article_name nvarchar(15)  NOT NULL,
    article_description nvarchar(200)  NOT NULL,
    CONSTRAINT Criminal_article_pk PRIMARY KEY  (idArticle)
);

-- Table: Location
CREATE TABLE Location (
    idLocation int  NOT NULL identity,
    location_name nvarchar(50)  NOT NULL,
    region_name nvarchar(50)  NOT NULL,
    oblast_name nvarchar(50)  NOT NULL,
    CONSTRAINT Location_pk PRIMARY KEY  (idLocation)
);

-- Table: Lost_person
CREATE TABLE Lost_person (
    idLost int  NOT NULL identity,
    name nvarchar(30)  NOT NULL,
    middle_name nvarchar(30)  NOT NULL,
    last_name nvarchar(30)  NOT NULL,
    sex nvarchar(10)  NOT NULL,
    birh_date datetime  NOT NULL,
    CONSTRAINT Lost_person_pk PRIMARY KEY  (idLost)
);

-- Table: Lost_report
CREATE TABLE Lost_report (
    idReport int  NOT NULL identity,
    lost_number int  NOT NULL,
    idLost int  NOT NULL,
    idLocation int  NOT NULL,
    idTime int  NOT NULL,
    idPoliceDepartment int  NOT NULL,
    idArticle int  NOT NULL,
    idRestraint int  NOT NULL,
    CONSTRAINT Lost_report_pk PRIMARY KEY  (idReport)
);

-- Table: Police_department
CREATE TABLE Police_department (
    idPoliceDepartment int  NOT NULL identity,
    department_name nvarchar(100)  NOT NULL,
    CONSTRAINT Police_department_pk PRIMARY KEY  (idPoliceDepartment)
);

-- Table: Restraint
CREATE TABLE Restraint (
    idRestraint int  NOT NULL identity,
    title nvarchar(50)  NOT NULL,
    date date  NOT NULL,
    CONSTRAINT Restraint_pk PRIMARY KEY  (idRestraint)
);

-- Table: Time
CREATE TABLE Time (
    idTime int  NOT NULL identity,
    date date  NOT NULL,
    Day int  NOT NULL,
    Month int  NOT NULL,
    Year int  NOT NULL,
    DayOfWeek nvarchar(30)  NOT NULL,
    MonthName nvarchar(30)  NOT NULL,
    CONSTRAINT Time_pk PRIMARY KEY  (idTime)
);

-- foreign keys
-- Reference: Lost_report_Criminal_article (table: Lost_report)
ALTER TABLE Lost_report ADD CONSTRAINT Lost_report_Criminal_article
    FOREIGN KEY (idArticle)
    REFERENCES Criminal_article (idArticle);

-- Reference: Lost_report_Location (table: Lost_report)
ALTER TABLE Lost_report ADD CONSTRAINT Lost_report_Location
    FOREIGN KEY (idLocation)
    REFERENCES Location (idLocation);

-- Reference: Lost_report_Lost_person (table: Lost_report)
ALTER TABLE Lost_report ADD CONSTRAINT Lost_report_Lost_person
    FOREIGN KEY (idLost)
    REFERENCES Lost_person (idLost);

-- Reference: Lost_report_Police_department (table: Lost_report)
ALTER TABLE Lost_report ADD CONSTRAINT Lost_report_Police_department
    FOREIGN KEY (idPoliceDepartment)
    REFERENCES Police_department (idPoliceDepartment);

-- Reference: Lost_report_Restraint (table: Lost_report)
ALTER TABLE Lost_report ADD CONSTRAINT Lost_report_Restraint
    FOREIGN KEY (idRestraint)
    REFERENCES Restraint (idRestraint);

-- Reference: Lost_report_Time (table: Lost_report)
ALTER TABLE Lost_report ADD CONSTRAINT Lost_report_Time
    FOREIGN KEY (idTime)
    REFERENCES Time (idTime);

-- End of file.

