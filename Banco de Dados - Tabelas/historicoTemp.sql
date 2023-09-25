use sprint2;

create table historicoTemp(
idHist int primary key auto_increment,
fkSensorTemp int not null,
constraint fkSensorTemp foreign key (fkSensorTemp) references sensorTemp(idSensorTemp),
fkGalin int not null,
constraint fkGalinhe foreign key (fkGalin) references galinheiro(idGalinheiro),
timeVrfTemp datetime not null,
statsTemp decimal(3, 1) not null
);
  -- verificação de 30 em 30 minutos
  
  insert into historicoTemp (fkSensorTemp, fkGalin, timeVrfTemp, statsTemp) values
  (1, 1, '2023-09-23 12:00:00', '26.5'),
  (2, 1, '2023-09-23 12:00:00', '26.5'),
  (3, 1, '2023-09-23 12:00:00','26.8'),
  (4, 1, '2023-09-23 12:00:00', '26.6'),
  (5, 1, '2023-09-23 12:00:00', '26.5'),
  (6, 2, '2023-09-23 12:15:00', '24.9'),
  (7, 2, '2023-09-23 12:15:00', '25.0'),
  (8, 2, '2023-09-23 12:15:00', '25.0'),
  (9, 2, '2023-09-23 12:15:00', '24.7'),
  (10, 3, '2023-09-23 12:30:00', '27.3'),
  (11, 3, '2023-09-23 12:30:00', '27.1'),
  (12, 3, '2023-09-23 12:30:00', '27.0'),
  (13, 3, '2023-09-23 12:30:00', '27.0'),
  (14, 3, '2023-09-23 12:30:00', '27.1'),
  (15, 3, '2023-09-23 12:30:00', '27.1'),
  (16, 4, '2023-09-23 12:45:00', '23.8'),
  (17, 4, '2023-09-23 12:45:00', '24.0'),
  (18, 4, '2023-09-23 12:45:00', '24.2'),
  (19, 5, '2023-09-23 13:00:00', '28.0'),
  (20, 5, '2023-09-23 13:00:00', '27.9'),
  (21, 5, '2023-09-23 13:00:00', '28.3'),
  (22, 5, '2023-09-23 13:00:00', '28.1'),
  (23, 5, '2023-09-23 13:00:00', '28.1'),
  (24, 5, '2023-09-23 13:00:00', '28.1'),
  (25, 5, '2023-09-23 13:00:00', '28.2');
  
  select * from historicoTemp;
  
  select * from historicoTemp join galinheiro on fkGalin = idGalinheiro;
  
  select * from historicoTemp join galinheiro on fkGalin = idGalinheiro where idGalinheiro = 2;
  
  select h.fkSensorTemp as SensorTemp,
	h.timeVrfTemp as VrfTemp,
		h.statsTemp as StatsTemp,
			g.idGalinheiro as Galinheiro
				from historicoTemp as h join galinheiro as g 
					on fkGalin = idGalinheiro 
						where idGalinheiro = 4;