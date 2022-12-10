use HospitalIfpe;

alter table laboratorio add column especialidade varchar(45) not null;
alter table enfermeira add column salario decimal(7,2) not null;
alter table enfermeiraChefe add column salarioAcresimo decimal(7,2) not null;
alter table medico add column salario decimal(7,2) not null;
alter table pessoalapoio add column salario decimal(7,2) not null;
alter table paciente add column sexo varchar(1) not null;