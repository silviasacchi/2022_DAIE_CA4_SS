-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-01-19 22:39:23.221

-- tables
-- Table: Distribution
CREATE TABLE Distribution (
    region varchar(5)  NOT NULL,
    country varchar(20)  NOT NULL,
    distributor_name varchar(40)  NOT NULL,
    distributor_code int  NOT NULL,
    CONSTRAINT Distribution_pk PRIMARY KEY (distributor_code)
) COMMENT 'Details about locations and release information.';

-- Table: Library
CREATE TABLE Library (
    asset_name varchar(15)  NOT NULL,
    asset_code int  NOT NULL,
    description varchar(150)  NOT NULL,
    work_item_name varchar(15)  NOT NULL,
    work_item_code int  NOT NULL,
    type varchar(10)  NOT NULL,
    format varchar(5)  NOT NULL,
    created_by int  NOT NULL,
    CONSTRAINT Library_pk PRIMARY KEY (asset_code)
) COMMENT 'List of electronic resources (assets) and work items used to produce them.';

-- Table: Project_Information
CREATE TABLE Project_Information (
    project_name varchar(100)  NOT NULL,
    project_ID int  NOT NULL,
    deadline date  NOT NULL,
    description varchar(200)  NOT NULL,
    project_owner_name varchar(40)  NOT NULL,
    project_owner_ID int  NOT NULL,
    CONSTRAINT Project_Information_pk PRIMARY KEY (project_ID)
) COMMENT 'Key information regarding the project, its requirements and goals.';

-- Table: Team
CREATE TABLE Team (
    employee_ID int  NOT NULL,
    name varchar(40)  NOT NULL,
    team varchar(10)  NOT NULL,
    role varchar(10)  NOT NULL,
    email varchar(100)  NOT NULL,
    CONSTRAINT Team_pk PRIMARY KEY (employee_ID)
) COMMENT 'This table contain all the information about teams and team members that worked on this video game.';

-- Table: Work_Items
CREATE TABLE Work_Items (
    item_ID int  NOT NULL,
    item_name varchar(15)  NOT NULL,
    description varchar(200)  NOT NULL,
    team_member varchar(40)  NOT NULL,
    member_ID int  NOT NULL,
    status varchar(10)  NOT NULL,
    CONSTRAINT Work_Items_pk PRIMARY KEY (item_ID)
) COMMENT 'List of work items necessary to complete the project.';

-- End of file.

