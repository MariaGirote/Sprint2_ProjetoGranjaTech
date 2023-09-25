use sprint2;

create table sensorTemp( 
    idSensorTemp int primary key auto_increment, 
    fkGalin int,
    constraint fkGalin foreign key (fkGalin) references galinheiro(idGalinheiro)
    );

insert into sensorTemp (fkGalin) values
(1),
(1),
(1),
(1),
(1),
(2),
(2),
(2),
(2),
(3),
(3),
(3),
(3),
(3),
(3),
(4),
(4),
(4),
(5),
(5),
(5),
(5),
(5),
(5),
(5);

select * from sensorTemp;

select * from sensorTemp join galinheiro on fkGalin = idGalinheiro;