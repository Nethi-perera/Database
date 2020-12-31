use LibrarySYS

insert into [publisher] (name,address,publisherid)
values('Stark','312 North California','300'),
('Clara','12 Sam street florida','301'),
('Delora','38 Family Junction Pensilvania','302'),
('Emilia','234 Jaffna Road, Jaffna','303'),
('Madea','126 Stuart Road, Highlevel','304'),
('Florence','45 North carolina','305'),
('Redma','456 tranver street Matale','306'),
('Tresha','56, red meat shop street','307'),
('Payton','345,vermont','308'),
('Darwin','34 elmore street','309');
select * from [publisher]
go

insert into [book](bisbnno,availabilty,name,author,price,title,year,publisherid)
values ('100234',0,'To Kill a mockingbird','Harper Lee','2300','To Kill a mockingbird','2011','300'),
('100214',1,'Just Me','Jojo Moyes','1750','Just Me','2018','301'),
('100562',0,'Lord of the rings','J.R.R.Tolkein','2500','Lord of the rings','2005','302'),
('100764',0,'Pinnochio','Carlo Collodi','2000','Pinnochio','1885','303'),
('105679',1,'In Search of lost Time','Marcel Proust','3000','In Search Of lost Time','2006','304'),
('234686',1,'Ulysses','James Joyce','4000','Ulysses','1995','305'),
('456798',0,'The Great Gatsby','Scott Fitzgerald','4500','The Great Gatsby','2019','306'),
('456789',0,'Moby Dick','Herman Melville','3000','Moby Dick','2015','307'),
('451900',1,'War and Peace','Leo Tolstoy','2000','War and Peace','2001','308'),
('234576',0,'Hamlet','William Shakespeare','1500','Hamlet','1996','309')
select * from [book]
go