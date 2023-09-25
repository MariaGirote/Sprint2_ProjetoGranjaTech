use sprint2;

create table historicoUmid(
idHist int primary key auto_increment,
fkSensorUmid int not null,
constraint fkSensorUmid foreign key (fkSensorUmid) references sensorUmid(idSensorUmid),
fkGalin int not null,
constraint fkGalinheiro foreign key (fkGalin) references galinheiro(idGalinheiro),
timeVrfUmid datetime not null,
statsUmid decimal(3, 1) not null
);
  -- verificação de 30 em 30 minutos
  
  insert into historicoUmid (fkSensorUmid, fkGalin, timeVrfUmid, statsUmid) values
  (1, 1, '2023-09-23 14:30:00', '45.5'),
  (2, 1, '2023-09-23 14:30:00', '45.5'),
  (3, 1, '2023-09-23 14:30:00', '45.9'),
  (4, 1, '2023-09-23 14:30:00', '45.7'),
  (5, 2, '2023-09-23 14:45:00', '42.7'),
  (6, 2, '2023-09-23 14:45:00', '42.8'),
  (7, 2, '2023-09-23 14:45:00', '44.00'),
  (8, 3, '2023-09-23 15:00:00', '48.0'),
  (9, 3, '2023-09-23 15:00:00', '48.2'),
  (10, 3, '2023-09-23 15:00:00', '48.1'),
  (11, 3, '2023-09-23 15:00:00', '48.6'),
  (12, 3, '2023-09-23 15:00:00', '48.4'),
  (13, 4, '2023-09-23 15:15:00', '35.1'),
  (14, 4, '2023-09-23 15:15:00', '35.3'),
  (15, 5, '2023-09-23 15:30:00', '50.1'),
  (16, 5, '2023-09-23 15:30:00', '51.0'),
  (17, 5, '2023-09-23 15:30:00', '51.1'),
  (18, 5, '2023-09-23 15:30:00', '50.7'),
  (19, 5, '2023-09-23 15:30:00', '50.5'),
  (20, 5, '2023-09-23 15:30:00', '50.1');
  
  select * from historicoUmid;
  
  select * from historicoUmid join galinheiro on fkGalin = idGalinheiro;
  
  select * from historicoUmid join galinheiro on fkGalin = idGalinheiro where idGalinheiro = 2;
  
  select h.fkSensorUmid as SensorUmid,
	h.timeVrfUmid as VrfUmid,
		h.statsUmid as StatsUmid,
			g.idGalinheiro as Galinheiro
				from historicoUmid as h join galinheiro as g 
					on fkGalin = idGalinheiro 
						where idGalinheiro = 4;