use LibrarySYS

delete from member

INSERT INTO member(idcode,address,expdate,gender,name,contactno,memberdate)
VALUES
('10001','Colombo','20201231','Female','Ariana','0777456790','20200918'),
('10002','Wattale','20201230','Male','Dilan','0768926715','20190826'),
('10003','Kandy','20201231','Male','Ajith','0777451826','20180225'),
('10004','Homagama','20201231','Female','Disney','0712635981','20200602'),
('10005','Colombo','20201221','Female','Sheila','0712635541','20200406'),
('10006','Maharagama','20201231','Male','Malindu','0712632331','20180603'),
('10007','Colombo','20201223','Female','Shamima','0777259810','20200306'),
('10008','Awisawalla','20201211','Female','Liza','0715278810','20180812'),
('10009','Colombo','20201231','Male','Donald','0642195981','20190106'),
('10010','Wattale','20201201','Female','Danthe','0777787610','20190129')
select * from member


INSERT INTO student(idcode,school)
VALUES('10001','Lyceum International'),
('10006','Royal College')
SELECT * FROM student



INSERT INTO undergraduate(idcode,nic,university,program)
VALUES('10002','2199820021','NSBM','Software_Engineering'),
('10004','3799876549','SLIIT','Cyber_Security')
SELECT * FROM undergraduate



INSERT INTO postgraduate(idcode,nic,university,researchtype)
values('10003','2789564176','AAT','Bachelors in Computing'),
('10008','2508593752','NSBM','Business Prototypes')
SELECT * FROM postgraduate


INSERT INTO kindergarten(idcode,name)
VALUES('10007','Apollo Kindergarden'),
('10010','Growth Trees Kindergarden')
SELECT * FROM kindergarten


INSERT INTO other(idcode,nic,occupation)
VALUES('10009','1976371826','Engineer'),
('10005','1836718261','Businessman')
SELECT * FROM other