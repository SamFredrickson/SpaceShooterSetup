create database SpaceShooterDB;
go
use SpaceShooterDB;
go

create table Player(
	[id] int primary key identity not null,
	[name] nvarchar(max) not null,
);

go

create table Score(

	[id] int primary key identity not null,
	[seconds] int not null,
	[minutes] int,
	[hours]   int,
	[difficulty] nvarchar(max) not null
);
go
create table PlayerScore(

	[id] int primary key identity not null,
	[id_player] int foreign key references Player([id]),
	[id_score] int unique foreign key references Score([id]),

);
