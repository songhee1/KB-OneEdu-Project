-- 삭제
DROP TABLE student;
DROP TABLE lecture;
DROP TABLE learning;
DROP TABLE teacher;

-- 생성
CREATE TABLE student (
student_id number(5),
name VARCHAR2(20),
address VARCHAR2(255),
phone VARCHAR2(30),
email VARCHAR2(40)
);

CREATE TABLE lecture(
lecture_id number(5),
name VARCHAR2(20),
subject VARCHAR2(20),
likes number(5),
price number(9)
);

CREATE TABLE learning(
student_id number(5),
lecture_id number(5),
flag NUMBER(1)
);


CREATE TABLE teacher(
teacher_id number(5),
name varchar2(20),
email VARCHAR2(40),
subject varchar2(20)
);


CREATE TABLE education(
lecture_id number(5),
teacher_id number(5)
);




-- select
SELECT * from tab;


-- 기본키 제약조건
ALTER TABLE student ADD CONSTRAINT student_student_id_pk PRIMARY KEY(student_id);
DESC student;
ALTER TABLE lecture ADD CONSTRAINT lecture_lecture_id_pk PRIMARY KEY(lecture_id);
DESC lecture;
ALTER TABLE teacher ADD CONSTRAINT teacher_teacher_id_pk PRIMARY KEY(teacher_id);
DESC teacher;




-- 외래키 제약조건
ALTER TABLE learning ADD CONSTRAINT learning_student_id_fk FOREIGN KEY (student_id) REFERENCES student(student_id) ON DELETE CASCADE;
ALTER TABLE learning ADD CONSTRAINT learning_lecture_id_fk FOREIGN KEY (lecture_id) REFERENCES lecture(lecture_id) ON DELETE CASCADE;

ALTER TABLE education ADD CONSTRAINT education_lecture_id_fk foreign key(lecture_id)
REFERENCES lecture(lecture_id);
DESC education ON DELETE CASCADE;

ALTER TABLE education ADD CONSTRAINT education_teacher_id_fk foreign key(teacher_id)
REFERENCES teacher(teacher_id) ON DELETE CASCADE;


-- 시퀀스 값 생성 
CREATE SEQUENCE seq_student
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE seq_lecture
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE seq_teacher
START WITH 12
INCREMENT BY 1;

DESC seq_student;
DESC seq_lecture;
DESC seq_teacher;

-- 시퀀스 값 삭제
DROP SEQUENCE seq_student;
DROP SEQUENCE seq_lecture;
DROP SEQUENCE seq_teacher;



-- ======================================================값 입력=================================================================
--학생
INSERT INTO student(student_id,name,address,phone,email)
VALUES(seq_student.nextVal,'최송희','수원','010-1111-1111','111@naver.com');

INSERT INTO student(student_id,name,address,phone,email)
VALUES(seq_student.nextVal,'김가빈','인천','010-2222-2222','222@naver.com');

INSERT INTO student(student_id,name,address,phone,email)
VALUES(seq_student.nextVal,'맹영욱','서울','010-3333-3333','333@naver.com');

select * from student;
insert into student (student_id, name, address, phone, email) values (1, 'Rani MacLaren', '876 Tennessee Point', '883-481-0331', 'rmaclaren0@guardian.co.uk');
insert into student (student_id, name, address, phone, email) values (2, 'Ora Papworth', '8 Ronald Regan Pass', '971-416-0471', 'opapworth1@deviantart.com');
insert into student (student_id, name, address, phone, email) values (3, 'Cosme Renouf', '1035 Moulton Plaza', '759-830-1510', 'crenouf2@nih.gov');
insert into student (student_id, name, address, phone, email) values (4, 'Matthew Lyal', '96 Donald Junction', '690-646-0316', 'mlyal3@i2i.jp');
insert into student (student_id, name, address, phone, email) values (5, 'Natalina Binnell', '3 Fairview Court', '241-936-6572', 'nbinnell4@nsw.gov.au');
insert into student (student_id, name, address, phone, email) values (6, 'Torie Santhouse', '4089 Melvin Place', '616-514-8723', 'tsanthouse5@stanford.edu');
insert into student (student_id, name, address, phone, email) values (7, 'Iona Gerin', '3 Heffernan Crossing', '305-315-9918', 'igerin6@nbcnews.com');
insert into student (student_id, name, address, phone, email) values (8, 'Devonna Vernham', '53 Birchwood Street', '990-849-2951', 'dvernham7@howstuffworks.com');
insert into student (student_id, name, address, phone, email) values (9, 'Rube Oldknow', '20 Melby Plaza', '182-606-8145', 'roldknow8@census.gov');
insert into student (student_id, name, address, phone, email) values (10, 'Theodore Baudichon', '501 Nelson Drive', '954-331-4774', 'tbaudichon9@blogger.com');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Rani MacLaren', '876 Tennessee Point', '883-481-0331', 'rmaclaren0@guardian.co.uk');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Ora Papworth', '8 Ronald Regan Pass', '971-416-0471', 'opapworth1@deviantart.com');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Cosme Renouf', '1035 Moulton Plaza', '759-830-1510', 'crenouf2@nih.gov');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Matthew Lyal', '96 Donald Junction', '690-646-0316', 'mlyal3@i2i.jp');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Natalina Binnell', '3 Fairview Court', '241-936-6572', 'nbinnell4@nsw.gov.au');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Torie Santhouse', '4089 Melvin Place', '616-514-8723', 'tsanthouse5@stanford.edu');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Iona Gerin', '3 Heffernan Crossing', '305-315-9918', 'igerin6@nbcnews.com');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Devonna Vernham', '53 Birchwood Street', '990-849-2951', 'dvernham7@howstuffworks.com');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Rube Oldknow', '20 Melby Plaza', '182-606-8145', 'roldknow8@census.gov');
insert into student (student_id, name, address, phone, email) values (seq_student.nextVal, 'Theodore Baudichon', '501 Nelson Drive', '954-331-4774', 'tbaudichon9@blogger.com');
commit;

insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '미분', '수학', 14, 933226);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '확률과 통계', '수학', 15, 567368);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '물리 II', '과학탐구',15, 940250);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '화학 I', '과학탐구',19, 919561);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '화법과 작문', '국어', 29, 355698);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '말하기', '국어', 19, 761562);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '독해와 문법', '영어', 6, 447576);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '정치와 법', '사회탐구', 12, 450281);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '생활과 윤리', '사회탐구', 14, 560523);
insert into lecture (lecture_id, name, subject, likes, price) values (seq_lecture.nextVal, '한국사', '한국사', 5, 550947);


insert into learning (student_id, lecture_id, flag) values (8, 4, 0);
insert into learning (student_id, lecture_id, flag) values (5, 5, 0);
insert into learning (student_id, lecture_id, flag) values (1, 4, 1);
insert into learning (student_id, lecture_id, flag) values (5, 2, 1);
insert into learning (student_id, lecture_id, flag) values (5, 4, 1);
insert into learning (student_id, lecture_id, flag) values (8, 5, 0);
insert into learning (student_id, lecture_id, flag) values (9, 6, 0);
insert into learning (student_id, lecture_id, flag) values (5, 8, 0);
insert into learning (student_id, lecture_id, flag) values (4, 1, 1);
insert into learning (student_id, lecture_id, flag) values (1, 7, 0);
insert into learning (student_id, lecture_id, flag) values (5, 11, 0);
commit;



insert into education (lecture_id, teacher_id) values (9, 6);
insert into education (lecture_id, teacher_id) values (3, 2);
insert into education (lecture_id, teacher_id) values (2, 10);
insert into education (lecture_id, teacher_id) values (4, 1);
insert into education (lecture_id, teacher_id) values (9, 9);
insert into education (lecture_id, teacher_id) values (10, 10);
insert into education (lecture_id, teacher_id) values (10, 1);
insert into education (lecture_id, teacher_id) values (7, 8);
insert into education (lecture_id, teacher_id) values (3, 8);
insert into education (lecture_id, teacher_id) values (9, 6);

commit;




SELECT * FROM learning;
SELECT * FROM student;
SELECT * FROM lecture;
SELECT * FROM teacher;
SELECT * FROM education;
DELETE FROM lecture WHERE lecture_id = 0;




INSERT INTO lecture(lecture_id,name,subject,likes,price)
VALUES(seq_lecture.nextVal,'미분','수학',0,1000000);

INSERT INTO lecture(lecture_id,name,subject,likes,price)
VALUES(seq_lecture.nextVal,'확통','수학',0,50000);

INSERT INTO lecture(lecture_id,name,subject,likes,price)
VALUES(seq_lecture.nextVal,'말하기','국어',0,10000);
select * from lecture;


insert into teacher(teacher_id,name,email,subject)
values(seq_teacher.nextVal,'하승현','ha@naver.com','수학');

insert into teacher(teacher_id,name,email,subject)
values(seq_teacher.nextVal,'최승현','choi@naver.com','국어');

insert into teacher(teacher_id,name,email,subject)
values(seq_teacher.nextVal,'김승현','kim@naver.com','수학');



insert into teacher (teacher_id, name, email, subject) values (1, 'Darill', 'drabb0@shinystat.com', 'Fatz');
insert into teacher (teacher_id, name, email, subject) values (2, 'Mikkel', 'mclaypool1@hc360.com', 'Fliptune');
insert into teacher (teacher_id, name, email, subject) values (3, 'Phillis', 'pcoltan2@senate.gov', 'Thoughtstorm');
insert into teacher (teacher_id, name, email, subject) values (4, 'Gabriello', 'gjolliffe3@wiley.com', 'Linktype');
insert into teacher (teacher_id, name, email, subject) values (5, 'Denis', 'dbeacon4@angelfire.com', 'Twitterbridge');
insert into teacher (teacher_id, name, email, subject) values (6, 'Mollee', 'mdeathridge5@whitehouse.gov', 'Oozz');
insert into teacher (teacher_id, name, email, subject) values (7, 'Malvina', 'mdreamer6@bloomberg.com', 'Browsebug');
insert into teacher (teacher_id, name, email, subject) values (8, 'Inger', 'icoskerry7@1und1.de', 'Babblestorm');
insert into teacher (teacher_id, name, email, subject) values (9, 'Kaleb', 'kmariaud8@dailymotion.com', 'Youspan');
insert into teacher (teacher_id, name, email, subject) values (10, 'Cullie', 'cblasing9@ucoz.com', 'Jetpulse');
insert into teacher (teacher_id, name, email, subject) values (11, 'Culjjld', 'cblasing9@ucoz.com', '수학');






select * from teacher;

insert into learning(student_id, lecture_id, flag)
values(1,1,0);

insert into learning(student_id, lecture_id, flag)
values(2,1,0);

insert into learning(student_id, lecture_id, flag)
values(3,3,0);

-- insert into learning(student_id, lecture_id, flag) values(5,5,0);

insert into education(teacher_id, lecture_id)
values(1,1);

insert into education(teacher_id, lecture_id)
values(3,2);

insert into education(teacher_id, lecture_id)
values(2,3);

/*
INSERT INTO student(student_id,name,address,phone,email)
VALUES( ,'','','','');

INSERT INTO lecture(lecture_id,lecture_name,subject,likes,price)
VALUES(,'','',,);

insert into teacher(teacher_id,teacher_name,teacher_email,subject)
values(,'','','');

insert into learning(student_id, lecture_id,check_flag)
values(1,1,0);

insert into education(teacher_id, lecture_id)
values(7,1);
*/


-- 전체 조회
SELECT * FROM student;
SELECT * FROM learning;
SELECT * FROM lecture;


-- 테이블 삭제
DROP TABLE student;
DROP TABLE learning;
DROP TABLE lecture;
DROP TABLE education;
DROP TABLE teacher;


INSERT INTO learning VALUES(1, 2,0);

ALTER TABLE learning ADD CONSTRAINT learning_student_id_fk foreign key(student_id)
REFERENCES teacher(teacher_id);


-- 외래키 제약조건 (on delete cascade)
ALTER TABLE learning ADD CONSTRAINT learning_student_id_fk FOREIGN KEY (student_id) REFERENCES student(student_id) ON DELETE CASCADE;
ALTER TABLE learning ADD CONSTRAINT learning_lecture_id_fk FOREIGN KEY (lecture_id) REFERENCES lecture(lecture_id) ON DELETE CASCADE;




-- 학생이 수강 중인 강의 전체 목록 조회
SELECT DISTINCT student_id FROM learning WHERE student_id = 8;


-- 수강 중인 학생의 강의 전체 목록 조회
SELECT lecture.name AS name, lecture.subject AS subject, lecture.likes AS likes, lecture.price AS price, learning.student_id AS id
FROM learning, lecture
WHERE learning.lecture_id = lecture.lecture_id AND learning.student_id = 2;


-- 수강 중인 학생의 강의 전체 비용 조회
SELECT SUM(price), id
FROM(
SELECT lecture.name AS name, lecture.subject AS subject, lecture.likes AS likes, lecture.price AS price, learning.student_id AS id
FROM learning, lecture
WHERE learning.lecture_id = lecture.lecture_id AND learning.student_id = 2
)
GROUP BY id;

