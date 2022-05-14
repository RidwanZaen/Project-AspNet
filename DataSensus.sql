CREATE DATABASE data_sensus;

use data_sensus;

create table Product
(
	NIK varchar(5) not null Primary Key,
	Nama varchar(50),
	TempatLahir varchar(50),
	TanggalLahir datetime,
	JenisKelamin varchar(20),
	Alamat varchar(100),
	Pekerjaan varchar(20),
	Kewarganegaraan varchar(5)
)

create table Login
(
	UserID varchar(25) not null Primary key,
	Passwd varchar(25)
)

create table JenisKelamin
(
	IDJenisKelamin VarChar(5) not null primary key,
	JenisKelamin varchar(25)
)

create table Kewarganegaraan
(
	IDKewarganegaraan VarChar(5) not null primary key,
	Kewarganegaraan VarChar(5)
)

insert into Login Values ('ridwan', 123456);
insert into Login Values ('Admin 1', 123456);

insert into JenisKelamin values ('L','Laki-Laki');
insert into JenisKelamin values ('W', 'Wanita');
insert into Kewarganegaraan values ('1', 'WNA');
insert into Kewarganegaraan values ('2', 'WNI'); 

select * from JenisKelamin;
select * from Kewarganegaraan;