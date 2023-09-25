use sprint2;

create table galinheiro (
idGalinheiro int primary key auto_increment,
qtdNebulizador int not null,
qtdCela int not null,
qtdSensorTemp int not null,
qtdSensorUmid int not null
);

insert into galinheiro (qtdNebulizador, qtdCela, qtdSensorTemp, qtdSensorUmid) values
(4, 20, 5, 4),
(3, 15, 4, 3),
(5, 25, 6, 5),
(2, 10, 3, 2),
(6, 30, 7, 6);

select * from galinheiro;