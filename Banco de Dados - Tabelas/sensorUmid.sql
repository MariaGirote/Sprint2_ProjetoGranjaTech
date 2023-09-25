use sprint2;

create table sensorUmid(
	idSensorUmid int primary key auto_increment,
    fkGalin int,
    constraint fkGalinh foreign key (fkGalin) references galinheiro(idGalinheiro)
    );

insert into sensorUmid (fkGalin) values
(1),
(1),
(1),
(1),
(2),
(2),
(2),
(3),
(3),
(3),
(3),
(3),
(4),
(4),
(5),
(5),
(5),
(5),
(5),
(5);

select * from sensorUmid;

select * from sensorUmid join galinheiro on fkGalin = idGalinheiro;
