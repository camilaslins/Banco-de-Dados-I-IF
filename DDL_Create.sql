create database HospitalIFPE;
show databases;
use HospitalIFPE;

create table Endereco(
	idEndereco int primary key not null auto_increment,
	uf varchar(2) not null,
    cidade varchar(20) not null,
    bairro varchar(45) not null,
    rua varchar(45) not null,
    numero int not null,
    complemento varchar(45),
    cep varchar(9) not null
);

create table Telefone(
	idTelefone int primary key not null auto_increment,
    numero varchar(13)
);

create table Hospital(
	CNPJ varchar(14) primary key not null,
    nome varchar(45) not null,
    email varchar(45) not null unique,
    Endereco_idEndereco int not null,
    Telefone_idTelefone int not null,
    
    foreign key (Endereco_idEndereco) references Endereco (idEndereco),
    foreign key (Telefone_idTelefone) references Telefone (idTelefone)
);

create table Enfermeira(
	CPF varchar(11) primary key not null,
    nome varchar(45) not null,
    email varchar(45) not null unique,
    Hospital_CNPJ varchar(14) not null,
	Endereco_idEndereco int not null,
    Telefone_idTelefone int not null,

    foreign key (Hospital_CNPJ) references Hospital (CNPJ),
	foreign key (Endereco_idEndereco) references Endereco (idEndereco),
    foreign key (Telefone_idTelefone) references Telefone (idTelefone)
);

create table EnfermeiraChefe(
	idEnfermeiraChefe int primary key not null auto_increment,
    setor varchar(20) not null,
    Enfermeira_CPF varchar(11) not null,
    
    foreign key (Enfermeira_CPF) references Enfermeira (CPF)
);

create table Ambulatorio(
	idAmbulatorio int primary key not null auto_increment,
    nome varchar(45) not null,
    especialidade varchar(45) not null,
    Hospital_CNPJ varchar(14) not null,
    
    foreign key (Hospital_CNPJ) references Hospital (CNPJ)
);

create table PessoalApoio (
	CPF varchar(11) primary key not null,
	nome varchar(45) not null unique,
    email varchar(45) not null,
    funcao varchar(30) not null,
    Ambulatorio_idAmbulatorio int not null,
    Endereco_idEndereco int not null,
    Telefone_idTelefone int not null,
    
    foreign key (Ambulatorio_idAmbulatorio) references Ambulatorio (idAmbulatorio),
    foreign key (Endereco_idEndereco) references Endereco (idEndereco),
    foreign key (Telefone_idTelefone) references Telefone (idTelefone)
);

create table Laboratorio(
	CNPJ varchar(14) primary key not null,
	nome varchar(45) not null,
    email varchar(45) not null unique,
    Endereco_idEndereco int not null,
    Telefone_idTelefone int not null,
    
    foreign key (Endereco_idEndereco) references Endereco (idEndereco),
    foreign key (Telefone_idTelefone) references Telefone (idTelefone)
);

create table HospitalLaboratorio (
	idHospitalLaboratorio int primary key not null auto_increment,
	Hospital_CNPJ varchar(14) not null,
    Laboratorio_CNPJ varchar(14) not null,
    datapedido date not null,
    
    foreign key (Hospital_CNPJ) references Hospital (CNPJ),
    foreign key (Laboratorio_CNPJ) references Laboratorio (CNPJ)
);

create table Medico(
	CPF varchar(14) primary key not null,
    CRM varchar(6) not null unique,
    nome varchar(45) not null,
    especialidade varchar(30) not null,
    email varchar(45) not null unique,
    Hospital_CNPJ varchar(14) not null,
    Endereco_idEndereco int not null,
    Telefone_idTelefone int not null,
    
    foreign key (Hospital_CNPJ) references Hospital (CNPJ),
    foreign key (Endereco_idEndereco) references Endereco (idEndereco),
    foreign key (Telefone_idTelefone) references Telefone (idTelefone)
);

create table Paciente(
	CPF varchar(11) primary key not null,
    plano varchar(30) not null,
    nome varchar(45) not null,
    email varchar(45) not null unique,
    dataNasc date,
    Ambulatorio_idAmbulatorio int not null,
    Endereco_idEndereco int not null,
    Telefone_idTelefone int not null,
    
    foreign key (Ambulatorio_idAmbulatorio) references Ambulatorio (idAmbulatorio),
    foreign key (Endereco_idEndereco) references Endereco (idEndereco),
    foreign key (Telefone_idTelefone) references Telefone (idTelefone)
);

create table MedicoPaciente (
	Medico_CPF varchar(11) not null,
    Paciente_CPF varchar(11) not null,
    primary key (Medico_CPF, Paciente_CPF),
    
    foreign key (Medico_CPF) references Medico (CPF),
    foreign key (Paciente_CPF) references Paciente (CPF)
);

create table Exame (
	idExame int primary key not null auto_increment,
    nome varchar(45) not null,
    valor decimal(6,2) not null,
    especialidade varchar(45) not null,
    tipo varchar(30) not null,
    Laboratorio_CNPJ varchar(14) not null,
    Paciente_CPF varchar(11) not null,
    
    foreign key (Laboratorio_CNPJ) references Laboratorio (CNPJ),
    foreign key (Paciente_CPF) references Paciente (CPF)
    
);

create table Diagnostico (
	idDiagnostico int primary key not null auto_increment,
    DataDiagostico date not null,
	Resultado varchar(45) not null,
    Medico_CPF varchar(11) not null,
    Paciente_CPF varchar(11) not null,
    
    foreign key (Medico_CPF) references Medico (CPF),
    foreign key (Paciente_CPF) references Paciente (CPF)
);

create table DiagnosticoExame(
	Diagnostico_idDiagnostico int not null,
    Exame_idExame int not null,
    primary key (Diagnostico_idDiagnostico, Exame_idExame),
    
    foreign key (Diagnostico_idDiagnostico) references Diagnostico (idDiagnostico),
    foreign key (Exame_idExame) references Exame (idExame)
);

