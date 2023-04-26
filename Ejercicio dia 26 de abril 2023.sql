create database CITAS;
use CITAS;
create table Reporte_Cita
(
cod_r_cita int unsigned auto_increment primary key,
confirmacion enum ("Si","No") not null
);
create table Historial_Medico
(
cod_h_medico int unsigned auto_increment primary key,
contenido varchar(255) not null 
);
create table Agenda 
(
cod_agenda int unsigned auto_increment primary key,
fecha date not null
);


create table Sede 
(
cod_sede int unsigned auto_increment primary key,
direccion varchar(255) not null,
nombre_sede varchar(255) not null
);
create table Paciente
(
doc_paciente int unsigned auto_increment primary key,
nombre varchar(255) not null,
edad tinyint not null,
cod_his_medico int unsigned not null,
foreign key (cod_his_medico) references Historial_Medico (cod_h_medico)
);
create table doctor
(
cod_doctor int unsigned auto_increment primary key,
nombre varchar(255)not null,
num_identidad bigint not null,
cod_agen int unsigned not null,
cod_sed int unsigned not null, 
foreign key (cod_agen) references Agenda (cod_agenda),
foreign key (cod_sed) references Sede (cod_sede)
);
create table cita 
(
cod_cita int unsigned auto_increment primary key,
fecha date not null,
cod_doc int unsigned not null, 
doc_paci int unsigned not null,
cod_sed int unsigned not null,
cod_rep_cita int unsigned not null,
foreign key (cod_doc) references Doctor (cod_doctor),
foreign key (doc_paci) references Paciente (doc_paciente),
foreign key (cod_sed) references Sede (cod_sede),
foreign key (cod_rep_cita) references Reporte_Cita (cod_r_cita)
);


#--------------------------Reporte_Cita------------------------#
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
insert into Reporte_Cita (confirmacion)
values ("1");
#------------------------Historial_Medico------------------#
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
insert into Historial_Medico (contenido)
values ("Consulta General");
#------------------------Agenda--------------------------#
insert into Agenda (fecha)
values ("2022-04-02");
insert into Agenda (fecha)
values ("2022-04-03");
insert into Agenda (fecha)
values ("2022-04-04");
insert into Agenda (fecha)
values ("2022-04-05");
insert into Agenda (fecha)
values ("2022-04-06");
insert into Agenda (fecha)
values ("2022-04-07");
insert into Agenda (fecha)
values ("2022-04-08");
insert into Agenda (fecha)
values ("2022-04-09");
insert into Agenda (fecha)
values ("2022-04-10");
insert into Agenda (fecha)
values ("2022-04-11");
#-----------------------Sede-------------------------#
insert into Sede (direccion,nombre_sede)
values ("Calle 10 # 5-51","Bogota");
insert into Sede (direccion,nombre_sede)
values ("Avenida 19 No. 98-03","Cali");
insert into Sede (direccion,nombre_sede)
values ("Calle 53 No 10-60/46","Barranquilla");
insert into Sede (direccion,nombre_sede)
values ("Carrera 10 # 3-92","Medellin");
insert into Sede (direccion,nombre_sede)
values ("Calle 10 # 5-51","Cartagena");
insert into Sede (direccion,nombre_sede)
values ("Avenida Calle 26 No 59-51","Antioquia");
insert into Sede (direccion,nombre_sede)
values ("Calle 9 # 9 – 62","Nariño");
insert into Sede (direccion,nombre_sede)
values ("Calle 19 # 80A-40","Ibague");
insert into Sede (direccion,nombre_sede)
values ("Carrera 21 # 17 -63","Cauca");
insert into Sede (direccion,nombre_sede)
values ("Carrera 42 # 54-77","Caldas");
----------------------------- # Paciente #-------------------------------
insert into Paciente (nombre,edad,cod_his_medico)
values ("Pelayo Guijarro","58","1");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Karima Bello","26","2");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Berta Ubeda","29","3");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Xavi Aguado","32","4");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Mercedes Morillo","40","5");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Humberto Costa","39","6");
insert into Paciente (nombre,edad,cod_his_medico)
values ("John Sanchez","14","7");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Enrique Li","74","8");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Rosana Montenegro","45","9");
insert into Paciente (nombre,edad,cod_his_medico)
values ("Gisela Villaverde","18","10");
#-------------------------- Doctor -----------------------#
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Ivan Campillo","1234567890","1","1");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Jonatan Segarra","1234567891","2","2");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Ines Calderon","1234567892","3","3");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Thomas San-Martin","1234567893","4","4");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Jose-Pedro Garrido","1234567894","5","5");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Nicolae Davila","1234567895","6","6");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Vicenta Fidalgo","1234567896","7","7");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Arancha Escobar","1234567897","8","8");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Eusebio Bejarano","1234567898","9","9");
insert into Doctor (nombre,num_identidad,cod_agen,cod_sed)
values ("Raúl Barrientos","1234567899","10","10");
#-------------------------------Cita-----------------------------------#
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-02","1","1","1","1");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-03","2","2","2","2");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-04","3","3","3","3");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-05","4","4","4","4");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-06","5","5","5","5");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-07","6","6","6","6");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-08","7","7","7","7");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-09","8","8","8","8");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-10","9","9","9","9");
insert into Cita (fecha,cod_doc,doc_paci,cod_sed,cod_rep_cita)
values ("2022-04-11","10","10","10","10");



select cod_agenda as codigo_agendaa, fecha from Agenda;
select * from agenda limit 5;
select * from cita limit 5;
select * from doctor limit 5;
select * from historial_medico limit 5;
select * from paciente limit 5;
select * from reporte_cita limit 5;
select * from sede limit 5; 
select count(*) from agenda where cod_agenda=10 or cod_agenda=2 or cod_agenda=4 or cod_agenda=6 or cod_agenda=8;
select * from cita inner join doctor;




