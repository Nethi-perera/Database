USE LibrarySystem1

INSERT INTO Library (LNo, Name)
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
SELECT * FROM Library
GO

INSERT INTO LibraryLocation (LNo, Location)
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
SELECT * FROM LibraryLocation
GO

INSERT INTO Academic (LNo, School, College, University)
VALUES ('003','Lyceum Wattala','',''),
('004','','Royal College',''),
('005','','','NSBM GREEN UNIVERSITY'),
('008','School Library Maharagama','',''),
('009','','Central College Library',''),
('010','','','SLIIT Library')
SELECT * FROM Academic


INSERT INTO [Public] (LNo, Details)
VALUES('002','Colombo Public Library details'),
('007','Natioal Library of Sri Lanka details')
SELECT * FROM [Public]
GO


INSERT INTO Special(LNo, Details)
VALUES('001','Peradeniya Library details'),
('006','Atomic Energy Authority details')
SELECT * FROM Special