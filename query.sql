create database sms;
use sms;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(40) DEFAULT NULL,
  `nick_name` varchar(40) DEFAULT NULL,
  `father_name` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(80) DEFAULT NULL,
  `mother_name` varchar(80) DEFAULT NULL,
  `mother_occupation` varchar(80) DEFAULT NULL,
  `dob` varchar(80) DEFAULT NULL,
  `age` varchar(80) DEFAULT NULL,
  `email_id` varchar(80) DEFAULT NULL,
  `phone_no` varchar(80) DEFAULT NULL,
  `gender` varchar(80) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `standard` varchar(80) DEFAULT NULL,
  `section` varchar(80) DEFAULT NULL,
  `about` varchar(80) DEFAULT NULL,
   PRIMARY KEY (`id`)
);


CREATE TABLE `exam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(40) DEFAULT NULL,
  `exam_year` varchar(40) DEFAULT NULL,
   PRIMARY KEY (`id`)
);

drop table student_marks;

CREATE TABLE `student_marks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) not null,
  `exam_id` bigint(20) not null,
  `tamil` varchar(40) DEFAULT NULL,
  `english` varchar(40) DEFAULT NULL,
  `maths` varchar(20) DEFAULT NULL,
  `science` varchar(80) DEFAULT NULL,
  `social_science` varchar(80) DEFAULT NULL,
  `other1` varchar(80) DEFAULT NULL,
  `other2` varchar(80) DEFAULT NULL,
   PRIMARY KEY (`id`),
   foreign key (student_id) references student(id),
   foreign key (exam_id) references exam(id)
);
ALTER TABLE student_marks ADD total varchar(80);
ALTER TABLE student_marks ADD rank varchar(80);
ALTER TABLE student_marks ADD grade varchar(80);