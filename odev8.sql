--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--first, I created a new database and employed following query
CREATE TABLE employee (
	id integer,
	name varchar(50),
	birthday date,
	email varchar(100)
);
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
-- Using given website, I obtained following query and insert it as query
insert into employee (id, name, birthday, email) values (1, 'Chip', '2020-09-30', 'cmacneely0@google.com.hk');
insert into employee (id, name, birthday, email) values (2, 'Clim', '2021-01-18', 'cmordy1@hc360.com');
insert into employee (id, name, birthday, email) values (3, 'Patricia', '2021-05-16', 'pshevlin2@about.com');
insert into employee (id, name, birthday, email) values (4, 'Amery', '2021-02-01', 'akelledy3@bloglovin.com');
insert into employee (id, name, birthday, email) values (5, 'Clemmie', '2020-07-29', 'chellikes4@histats.com');
insert into employee (id, name, birthday, email) values (6, 'Christophorus', '2020-08-02', 'cbetun5@usda.gov');
insert into employee (id, name, birthday, email) values (7, 'Lexi', '2020-11-07', 'lsclater6@answers.com');
insert into employee (id, name, birthday, email) values (8, 'Christina', '2020-08-09', 'cwerner7@dagondesign.com');
insert into employee (id, name, birthday, email) values (9, 'Minnaminnie', '2021-01-05', 'mwiley8@quantcast.com');
insert into employee (id, name, birthday, email) values (10, 'Rickard', '2021-03-02', 'rpratley9@canalblog.com');
...
--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET
	name= 'last5id'
WHERE id>44
RETURNING *
--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
where id<6
RETURNING *
