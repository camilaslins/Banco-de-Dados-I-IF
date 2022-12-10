use hospitalifpe;

select * from telefone;

insert into endereco (uf, cidade, bairro, rua, numero, cep) 
	values ("PE", "Paulista", "Maranguape - 1", "90", "300", "53431230"),
    ("PE", "Paulista", "Paratibe", "193", "20", "53403121"),
    ("PE", "Paulista", "Centro", "10", "23", "39142312"),
    ("PE", "Recife", "São Matheus", "Aurora", "30", 39491823),
    ("PE", "Recife", "Boa viagem", "Alegria", "20", "3941023"),
    ("PE", "Paulista", "Maranguape - 1", "15", "39", "54932401"),
    ("PE", "Paulista", "Maranguape - 1", "24", "388", "53403132"),
    ("PE", "Paulista", "Maranguape - 2", "39", "23", "53421323"),
    ("PE", "Paulista", "Aurora", "Rua Alegre", "92", "53493123"),
    ("PE", "Olinda", "Bairro Novo", "Batutinha", "13", "38419232"),
    ("PE", "Olinda", "Madureira", "Casa forte", "15", "39482371"),
    ("PE", "Olinda", "Madureira", "Rua dos altos", "321", "38248232"),
    ("PE", "Recife", "Campo Grande", "Rua da matinha", "932", "83743230"),
    ("PE", "Paulista", "Janga", "Alto mar", "382", "39472932"),
    ("PE", "Abreu e lima", "Centro", "Rua do tiro", "111", "39242742"),
    ("PE", "Paulista", "Centro", "Rua do Sossego", "312", "53843432"),
    ("PE", "Paulista", "Jardim Paulista", "81", "90", "53853312"),
    ("PE", "Paulista", "Jardim Paulista", "Helder Camara", "132", "48234123"),
    ("PE", "Recife", "Varzea", "Seis de março", "10", "59343123"),
    ("PE", "Recife", "San Martin", "Maués", "53", "53483123"),
    ("PE", "Recife", "Bongi", "Acajutiba", "15","5343431"),
    ("PE", "Olinda", "Rio Doce", "Rua das graças", "99", "53433012"),
    ("PE", "Paulista", "Janga", "Rei dos mares", "312", "49341234"),
    ("PE", "Paulista", "Centro", "Imperatriz", "10", "49324123"),
    ("PE", "Igarassu", "Centro", "Rua da palma", "313", "53943123"),
    ("PE", "Recife", "Paiva", "Rua da Lama", "87", "53843421"),
    ("PE", "Paulista", "Maranguape - 2", "82", "83", "48234312"),
    ("PE", "Paulista", "Jardim Maranguape", "Rua do Presidente", "32", "38412302"),
    ("PE", "Recife", "Bairro Novo", "Rua do moeda", "83", "38423812"),
    ("PE", "Olinda", "Santo José", "Rua da mata", "321", "39422412"),
    ("PE", "Igarassu", "Bairro Alto", "Zona neutra", "392", "39412923"),
    ("PE", "Jaboatão", "ponce de leon", "Rua do tiro", "83", "48132032");
    
    
insert into telefone (numero)
	values ("81978535389"),
    (81947382937),
    (81984830182),
    (31938401923),
    (84918293012),
    (81948273491),
    (87984938423),
    (81948274929),
    (81948248214),
    (81984718492),
    (87948237412),
    (84716392093),
    (84947129849),
    (81984729832),
    (87497219402),
    (84482849234),
    (81984372341),
    (81743749234),
    (87984723141),
    (84984372432),
    (81948324312),
    (84977593423),
    (84946231324),
    (87993725234),
    (43481321423),
    (34821741232),
    (84984734221),
    (87984312341),
    (81984734132),
    (81984728431),
    (84938217412),
    (81948384321),
    (87984732423),
    (81847329432);
    
    
insert into hospital (cnpj, nome, email, Endereco_idEndereco, Telefone_idTelefone)
	values ("000000123456", "Hospital Real Santo Antonio", "hospitalsantoantonio@gmail.com", 1, 1);
    
insert into enfermeira (cpf, nome, salario, email, hospital_cnpj, Endereco_idEndereco, Telefone_idTelefone)
	values ("19303491834", "Ana Cláudia Arraia", 1500, "Aninhagatinha1999@gmail.com", "000000123456", 2, 2),
    ("13213412331", "Lucas Antonio", 2500, "antoninholukita@gmail.com", "000000123456", 7, 7),
    ("39482849232", "Maria Antonieta da Silva", 2500, "Marinhaantonia@gmail.com", "000000123456", 8, 8),
    ("68573482133", "Luciana Cláudia da Oruinda", 2500, "euluciana2@hotmail.com", "000000123456", 9, 9),
    ("94828494122", "Gabriel Toledo", 2500, "fallenstore@gmail.com", "000000123456", 10, 10),
    ("31841831412", "Epitácio Pessoa", 2500, "sktaco@gmail.com", "000000123456", 11, 11),
    ("94184123142", "Yellane da Costa", 2500, "eusouyellane@yahoo.com", "000000123456", 12, 12),
    ("99374714123", "Isis Valverde dos Santos", 2500, "isisvalverde192@gmail.com", "000000123456", 13, 13),
    ("98418498231", "Toni Kroos", 2500, "realtonikroos@gmail.com", "000000123456", 16, 16),
    ("14823451234", "Dani Ceballos", 2500, "domadridceballos@gmail.com", "000000123456", 17, 17),
    ("48412412341", "José Marcelo", 2500, "marcelinho2013@hotmail.com", "000000123456", 18, 18);
    
insert into enfermeirachefe (setor, salarioAcresimo, enfermeira_cpf)
	values ("leste", 1200, "19303491834"),
    ("oeste", 1200, "68573482133"),
    ("norte", 1200, "94828494122"),
    ("sul", 1200, "99374714123");
    
insert into ambulatorio (nome, especialidade, hospital_cnpj)
	values ("infantil", "emergência", "000000123456"),
    ("infantil", "internamento", "000000123456"),
    ("intanfil", "medicação", "000000123456"),
    ("adulto", "emergência", "000000123456"),
    ("adulto", "internamento", "000000123456"),
    ("adulto", "medicação", "000000123456"),
    ("idoso", "emergência", "000000123456"),
    ("idoso", "internamento", "000000123456"),
    ("idoso", "medicação", "000000123456");
    
insert into pessoalapoio (cpf, nome, email, funcao, salario, Ambulatorio_idAmbulatorio, Endereco_idEndereco, Telefone_idTelefone)
	values ("03847192812", "luiz julio", "luizjulio10@hotmail.com", "segurança", 2200, 1, 3, 3),
    ("38471492312", "Mariano Diaz", "marianodiazz@hotmail.com", "segurança", 2200, 4, 14, 14),
    ("48219432142", "Marco Asensio", "asensioreal@hotmail.com", "segurança", 2200, 7, 15, 15);
    
insert into laboratorio (cnpj, nome,especialidade, email, Endereco_idEndereco, Telefone_idTelefone)
	values ("00000047182834", "laboratorio são carlos", "exame de sangue", "labsaocarlos@gmail.com", 4, 4),
    ("00000004831313", "Laboratorio Albert Eisten", "exame fisiologico", "laboratoriodoalemao@gmail.com", 19, 19),
    ("00000008437234", "Lab. Gil do vigor", "exame de sangue", "gildojanga@gmail.com", 20, 20),
    ("00000042184123", "Lab. Aniita", "exame pateologico", "showdaanitta@gmail.com", 21, 21),
    ("00000008432943", "Lab. do Catra", "exame de paternidade", "seraquesouteupai@hotmail.com", 22, 22),
    ("00000018382142", "Laboratorio do Lampião", "exame fisiologico", "correqueohomitavindo@hotmail.com", 23, 23);
    
insert into hospitallaboratorio (Hospital_CNPJ, Laboratorio_CNPJ, datapedido)
	values ("000000123456", "00000047182834", "2022-05-22"),
    ("000000123456", "00000004831313", "2022-05-22"),
    ("000000123456", "00000042184123", "2022-05-22"),
    ("000000123456", "00000008432943", "2022-05-23"),
    ("000000123456", "00000008432943", "2022-05-23"),
    ("000000123456", "00000018382142", "2022-05-23"),
    ("000000123456", "00000008437234", "2022-05-24"),
    ("000000123456", "00000047182834", "2022-05-24"),
    ("000000123456", "00000018382142", "2022-05-25"),
    ("000000123456", "00000004831313", "2022-05-26");
    
insert into medico (cpf, crm, nome, salario, email, especialidade, Hospital_CNPJ, Endereco_idEndereco, Telefone_idTelefone)
	values ("31028491212", "239123", "luiz carlos", 13000, "drluizcarlos@gmail.com", "pediatria",  "000000123456", 5, 5),
    ("48238492312", "483423", "Gareth Bale", 11500, "drbale@hotmail.com", "ortopedista", "000000123456", 24, 24),
    ("90438432432", "949341", "Kevin Bruyne", 9300, "KDB@hotmail.com", "pediatria", "000000123456", 25, 25),
    ("12394124231", "483413", "Romeu Lukaku", 12000, "InterLukaku@yahoo.com", "geral", "000000123456", 26, 26),
	("94214821312", "938423", "Cristiano Ronaldo", 15000, "crgoat@hotmail.com", "geral", "000000123456", 27, 27),
    ("47142174123", "492143", "Lionel Messi", 14999, "lionelmessi2@hotmail.com", "Cardiologista", "000000123456", 28, 28);
    
insert into paciente (cpf, plano, nome, sexo, email, datanasc, Ambulatorio_idAmbulatorio, Endereco_idEndereco, Telefone_idTelefone)
	values ("93818231234", "unimed", "luisa santana", "f", "luisafofa@gmail.com", "2006/10/02", 1, 6, 6),
    ("41234128458", "santander", "Maria das dores", "f", "dasdoreseusoumaria@hotmail.com", "1989-12-19", 5, 29, 29),
    ("13823412482", "bradesco", "Julian Alvares", "m", "julianav@hotmail.com", "2004-03-12", 2, 30, 30);
    
insert into medicopaciente (Medico_CPF, Paciente_CPF)
	values ("31028491212", "93818231234"),
    ("48238492312", "41234128458"),
    ("94214821312", "13823412482");

insert into exame (nome, valor, especialidade, tipo, Laboratorio_CNPJ, Paciente_CPF)
	values ("Hemograma", "30", "sangue", "completo", "00000047182834", "93818231234"),
    ("Fisiologico", 90, "fisiologico", "verme", "00000004831313", "93818231234");
    
insert into diagnostico (DataDiagostico, resultado, Medico_CPF, Paciente_CPF)
	values ("2022-06-27", "infecção generelizada", "31028491212", "93818231234");
    
insert diagnosticoexame(Diagnostico_idDiagnostico, Exame_idExame)
	values (1, 1),
    (1, 2);
    
    