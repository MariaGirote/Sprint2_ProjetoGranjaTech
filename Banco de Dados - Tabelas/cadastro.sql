use sprint2;

create table cadastro( 
    id int primary key auto_increment, 
    nomeEmpresarial varchar(50) not null,
    nomeFantasia varchar(50) default 'não informado',
    cnpj char(18) not null,
    email varchar(50) not null,
	senha varchar(30) not null, 
    telefone varchar(40) default 'não informado'
);

insert into cadastro values
(null, 'AgroAves Brasil Ltda.', 'Granja Ovos Dourados', '12.345.678/0001-90', 'contato@ovosdouradosgranja.com', 'OvosDourados$Secure', '(11) 5555-1234'),
(null, 'SustentaGranja S.A.', 'Granja Ecológica Pluma Verde', '98.765.432/0002-01', 'contato@ecofarmsagroaves.com', 'Granja@Eco2023', '(11) 9876-5432'),
(null, 'Pássaro Feliz Alimentos Ltda.', 'Granja Sabor Natural', '23.456.789/0003-12', 'contato@happyhensfarms.net', 'GalinhasFelizes#Farm', '(11) 1111-9999');

insert into cadastro (nomeEmpresarial, cnpj, email, senha) values
('AgroGalinhas S.A', '12.345.678/0001-90', 'contato@agrogalinhas.com', 'Agr0G4linh4s_s.a'),
('FarmFresh Ovos e Aves Ltda.', '98.765.432/0002-01', 'contato@farmfresh.net', 'f4RmFr3sh4v3s');

select * from cadastro;
