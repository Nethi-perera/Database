use LibrarySYS









delete from empqualification
go

INSERT INTO empqualification(empid,qualification)
VALUES
('100',''),
('101','Majors in Software Engineering'),
('102','Studied in NSBM and did my degree on Business Managment'),
('103','Business Administrator'),
('104',''),
('105','System Analyst'),
('106',''),
('107',''),
('108','Agriculture'),
('109','') 
SELECT * FROM empqualification


INSERT INTO employee(empid,nic,name,gender,contactno,salary,address)
VALUES ('100','2003503100','Jack','Male','0777515786','75000','89,Kuswala Raddolugama'),
('101','2003504123','Emily','Female','0777231623','75000','32,Katunayke'),
('102','1992321231','Dilishi','Female','0715432712','50000','19 B,Ampara'),
('103','2001231227','Felix','Male','0760543212','67000','234 Trincomolee'),
('104','2000256781','Larry','Male','0765316790','80000','128 Matale'),
('105','1999235421','Sammy','Female','0735614289','50000','!90 Wattala Junction'),
('106','1880376514','Jimmy','Male','0716254318','45000','293 Jaffna'),
('107','1990263567','Timmothy','Male','0777651490','60000','124 strawberry lane Nuweraeliya'),
('108','2002256719','Anthonia','Female','0751367819','70000','130, Devala road Kandy'),
('109','2091267751','Jeffery','Male','0776540198','75000','124, Rubber road Katunayke')
SELECT * FROM employee
GO


INSERT INTO empqualification(empid,qualification)
VALUES('100','Majors in Cyber Law'),
('101','Majors in Software Engineering'),
('102','Studied in NSBM and did my degree on Business Managment'),
('103','Business Management'),
('104','Civil Engineering'),
('105','Quantity Serveying'),
('106','Electrical and Electronic Engineering'),
('107','Automobile'),
('108','Agriculture'),
('109','System Analyst') 
SELECT * FROM empqualification




INSERT INTO librarian(empid, details)
values('100',''),
('103','')
select * from librarian



INSERT INTO director(empid, details)
values('101',''),
('105','')
select * from director



INSERT INTO medicallibrarian(empid, details)
values('102','')
select * from medicallibrarian



INSERT INTO mediaspecialist(empid, details)
values('104',''),
('107','')
select * from mediaspecialist



INSERT INTO assistant(empid, details)
values('108','')
select * from assistant



INSERT INTO libraryaid(empid, details)
values('106','')
select * from libraryaid



INSERT INTO archivists(empid, details)
values('109','')
select * from archivists


