use LibrarySYS

INSERT INTO library (lno, name)
VALUES('001','Peradeniya Library'),
('002','Colombo Public Library'),
('003','Lyceum Wattala Library'),
('004','Royal College Library'),
('005','NSBM GREEN UNIVERSITY Library'),
('006','Atomic Energy Authority Library'),
('007','National Library of Sri Lanka'),
('008','School Library Maharagama'),
('009','Central College Library'),
('010','SLIIT Library')
SELECT * FROM library
GO

INSERT INTO librarylocation (lno, location)
VALUES('001','Peradeniya'),
('002','Colombo'),
('003','Wattale'),
('004','Colombo'),
('005','Homagama'),
('006','Colombo'),
('007','Colombo'),
('008','Maharagama'),
('009','KattanKudy'),
('010','Malabe')
SELECT * FROM librarylocation
GO

INSERT INTO academic (lno, school, college, university)
VALUES ('003','Lyceum Wattala','',''),
('004','','Royal College',''),
('005','','','NSBM GREEN UNIVERSITY'),
('008','School Library Maharagama','',''),
('009','','Central College Library',''),
('010','','','SLIIT Library')
SELECT * FROM academic
GO

INSERT INTO [public](lno, details)
VALUES('002','Colombo Public Library details'),
('007','National Library of Sri Lanka details')
SELECT * FROM [public]
GO

INSERT INTO special(lno, details)
VALUES('001','Peradeniya Library details'),
('006','Atomic Energy Authority details')
SELECT * FROM special
GO