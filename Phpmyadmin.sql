CREATE DATABASE registration;
USE registration;
CREATE TABLE  Department (
dept_id int AUTO_INCREMENT ,
name varchar(60) Not NULL UNIQUE,
description varchar(200),
    PRIMARY KEY(dept_id)
);
CREATE TABLE  uuser (
 user_id int AUTO_INCREMENT,
email varchar(60) NOT NULL UNIQUE,
 username varchar(60) NOT NULL UNIQUE,
password varchar(100) NOT NULL,
 registration_date TIMESTAMP(6),
 department_id int,
    PRIMARY KEY(user_id),
FOREIGN KEY (department_id) REFERENCES Department (dept_id)
)  ;     
 CREATE TABLE  course (
         course_id int AUTO_INCREMENT,
         course_name  varchar(60) NOT NULL UNIQUE,
         course_description varchar(150),
         instructor_name varchar(50) NOT NULL,
         credit_hours int NOT NULL,
         department_id int NOT NULL,
          PRIMARY KEY(course_id),
        FOREIGN KEY (department_id) REFERENCES Department (dept_id)
        );

INSERT INTO department(name, description) VALUES('Gas and Petrochemicals engineering program' , 'It is a field of engineering concerned with the activities related to the production of hydrocarbons, which can be either crude oil or natural gas.');
INSERT INTO department(name, description) VALUES('Electromechanical engineering program',' It is a field of engineering concerned with analysis, design, manufacture and maintenance of equipment and products based on the combination of electrical/electronic circuits and mechanical systems. ');
INSERT INTO department(name, description) VALUES('Computer and Telecommunications engineering program', ' It is a field of engineering concerned with developing, testing and evaluating the software that make our computers work. They may help in the development of new computer games and business applications. ');
INSERT INTO department (name, description) VALUES ('Architecture and Construction engineering program' ,'It is a field of engineering concerned with creating efficient buildings and building systems. ');
INSERT INTO department(name, description) VALUES('Offshore and Costal engineering program' ,'It is a field of engineering  concerned with the technical design of fixed and floating marine structures, such as oil platforms and offshore wind farms. ');

INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('probability' ,'we will learn about different methods','Dr.yasmine','3','1');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('chemistry' ,'we will learn about different chemical formulas','Dr.hassan','3','1');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('Math1' ,'we will learn about differentiation and integration','Dr.mohamed','3','1');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('Control systems' ,'we will learn about stabitlity of the system','Dr. Ahmed','3','3');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('Programming' ,'we get to know java and c','Dr.Ahmed wagdi','4','3');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('Logic' ,'how to consturct logic circuits','Dr.mostafa medhat','3','3');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('statistics' ,'how to make a stable system','dr.ahmed kahled','3','2');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('dynamics' ,'how object move and third dimension','dr.mostafa mohamed','3','2');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('math2' ,'we will learn about fourier series','dr.khaled hassan','3','2');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('graph1' ,'how to design a house','dr.medhat saleh','3','4');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('graph2' ,'different concepts for graph','dr.hassan ahmed','4','4');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('math3' ,'how to calculate taylor series','dr.khalil mostafa','3','4');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('fluid dynamics' ,'understand the flow of fluids ','dr.ahmed khaled','3','5');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('computer science' ,'introduction inot c programming','dr. mostafa ahmed','3','5');
INSERT INTO course(course_name, course_description,instructor_name,credit_hours,department_id) VALUES('Accunting' ,'how to calculate profit and loss','dr.nezar samy','2','5');





