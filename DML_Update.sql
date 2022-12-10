use HospitalIfpe;

UPDATE Enfermeira set EnfermeiraChefe_CPF = "19303491834" where CPF = "19303491834"; 
UPDATE Enfermeira set EnfermeiraChefe_CPF = "13213412331" where CPF = "13213412331"; 

UPDATE Telefone set numero = "81994830231" where idTelefone = 2;
UPDATE Telefone set numero = "87493482341" where idTelefone = 15;
UPDATE Telefone set numero = "3294823123" where idTelefone = 24;
UPDATE Telefone set numero = "89493841213" where idTelefone = 30;
UPDATE Telefone set numero = "91827493412" where idTelefone = 32;

UPDATE endereco set cep = "56381223" where idEndereco = 3;
UPDATE endereco set cep = "53853423" where idEndereco = 15;
UPDATE endereco set numero = "341" where idEndereco = 25;
UPDATE endereco set numero = "101" where idEndereco = 30;
UPDATE endereco set rua = "Rua bela" where idEndereco = 30;

UPDATE pessoalapoio set email = "lukas@gmail.com" where cpf = "42184128321";
UPDATE pessoalapoio set email = "marquitototonho@hotmail.com" where cpf = "84654684542";
UPDATE pessoalapoio set salario = 2000 where cpf = "89745451265";
UPDATE pessoalapoio set salario = 2500 where cpf = "65947946459";
UPDATE pessoalapoio set salario = 1500 where cpf = "14737523421";

UPDATE medico set crm = "938573" where cpf = "12394124231";
UPDATE medico set crm = "182482" where cpf = "19481230913";
UPDATE medico set crm = "394932" where cpf = "49132014123";

UPDATE paciente set plano = "santander" where cpf = "12030214321";
UPDATE paciente set plano = "amil" where cpf = "94812832142";

UPDATE exame set valor = 100 where idExame = 1;
UPDATE exame set valor = 120 where idExame = 5;
UPDATE exame set valor = 80 where idExame = 12;







