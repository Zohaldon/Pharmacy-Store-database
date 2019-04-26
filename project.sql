Create table customer
(
  customer_id Number(6,0),
  lastName varchar2(20),
  firstName varchar2(20),
  email varchar2(30),
  street varchar2(15),
  city varchar2(15),
  province varchar2(15),
  zip varchar2(10),
  phone_Numer number(10,0)
);

Create table drugCompany
(
  dc_id number(6,0),
  name varchar2(15)not null,
  mfg_license number(6,0)not null,
  street varchar2(15),
  city varchar2(15) not null,
  province varchar2(15)not null,
  country varchar2(15)
);

Create table ORDERS
(
  order_id Number(6,0),
  customer_id Number(6,0) not null,
  drug_id Number(6,0) not null,
  shipdate date,
  street varchar2(15),
  city varchar2(15) not null,
  province varchar2(15)not null,
  zip varchar2(10),
  cost number(6,0) not null,
  discount number(6,0)
);

create table orderitems
(
order_id Number(6,0),
drug_id Number(6,0) not null,
quantity Number(4,0) not null, 
cost Number (4,0)not null
);


create table payment
(
payment_id  Number(6,0),
customer_id Number(6,0),
date_of_purchase date not null,
Amount_due Number(8,0),
Amount_paid Number(4,0),
balance Number (4,0)not null,
has_paid char(1) not null
);


create table drugs
(
drug_id Number(6,0),
drug_name varchar2(6),
expiry_date date,
price Number(4,0),
power Number(4,0),
ingredients varchar2(9),
min_age_range number (3,0),
max_age_range number (3,0),
categories varchar(99)
);

alter table orders
add CONSTRAINT orders_order_id primary key(order_id);

alter table drugs
add CONSTRAINT drugs_drug_id primary key(drug_id);

alter table customer
add CONSTRAINT customers_customer_id primary key(customer_id);

alter table drugcompany
add CONSTRAINT drugcompany_dc_id primary key(dc_id);

alter table payment
add CONSTRAINT payment_payment_id primary key(payment_id);

ALTER TABLE Orderitems 
ADD CONSTRAINT FK_order_drug_id
FOREIGN KEY (drug_id) REFERENCES drugs(drug_ID);

ALTER TABLE orders
ADD CONSTRAINT FK_orders_drug_id
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE payment
ADD CONSTRAINT FK_payment_customer_id
FOREIGN KEY (order_id) REFERENCES orders(order_id);

ALTER TABLE Orders
ADD CONSTRAINT FK_order_customer_id
FOREIGN KEY (customer_id) REFERENCES orders(customer_ID);





insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300122','ptel','tom','4165237890','wren@yahoo.com','don mills','scarborough','ontario','M1J5K2');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300123','ninja','cruise','6475237890','herry12en@yahoo.com','vaughan mills','scarborough','ontario','M1J5K3');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300124','mayor','zeelie','6475467890','zisha12en@gmail.com','dollyvarden','scarborough','ontario','M1H5H4');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300125','brahmbhatt','jay','6475469874','zisha1@outlook.com','tuxedo','surat','ontario','300986');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300126','maaz','woran','4165415587','jaja@hotmail.com','milner','suratimar','vietnam','L1S5S5');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300127','kathan','woema','7785415587','raja@gmail.com','ahmed','baroda','japan','J1S5S5');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300128','maazuran','ziktron','7785467890','sha12en@hotmail.com','doli','shach','quebec','M1Z3F5');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300129','abdul','vohra','7455468890','sirbun12en@gmail.com','miloli','kashmir','japan','L1H2Y2');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300130','bhai','patel','9898468890','patelsaheb@gmail.com','choppati','mumbai','india','388001');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300132','jayimin','vekariya','9033214527','iopen@centennial.com','viji','Lanka','argentina','356203');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300133','Jay','Sharama','2254157784','jayshrama@gmal.com','raftar','Punjab','India','M1B2M3');





insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (312456,300121,124758,'18-mar-17','progress','baroda','ontario','M1H4H5','33','3');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325415,300123,124751,'18-dec-26','goa','timber','deer','654321','48','7');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325419,300128,124752,'18-sep-26','zera','dubai','saudi arab','X12BNM','125','1');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325523,300129,124745,'19-jul-15','ahmed','baroda','japan','J1S5S5','145','');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325235,300130,124746,'18-dec-1','choppati','mumbai','india','388001','48','2');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325411,300127,124745,'18-dec-26','doli','shach','quebec','M1Z3F5','60','3');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325491,300125,124752,'19-nov-03','barrent','seehea','ontaio','132654','150','1');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325482,300128,124746,'18-nov-03','tempa','oak land','ontario','M1N2K6','20','8');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325478,300126,124751,'19-oct-21','Elldemere','london','ontaio','M4K9U8','70','2');

insert into orders(order_id,customer_id,drug_id,shipdate,street,city,province,zip,cost,discount)
VALUES (325493,300129,124748,'19-dec-25','milner','suratimar','vietnam','654798','112','1');




insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220700','sunfarma','987645','dolby','atomos','imax','brazi');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220701','Relienace','159156','guru','goa','delhi','india');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220702','Appolo','756324','horil','zomba','gujarat','china');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220703','Zokolo','796452','vernec','lomb','kokio','Itlay');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220704','Tenta','568145','komb','dundas','ontario','Canada');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220705','Ironic','256358','harrysin','los santos','Gta','Ireland');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220706','Paraceta','852741','quuen st','toronto','Ontario','Canada');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220707','Rottenry','987321','Markham road','reed deer','Alberta','Canada');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220708','Binacon','958745','Sheppards','regina','Gujarat','Russia');

insert into drugcompany(dc_id,name,mfg_license,street,city,province,country)
values('220709','Hodora','568123','Zembdara','Kolkata','West Bengal','Australia');




insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300122','ptel','tom','4165237890','wren@yahoo.com','don mills','scarborough','ontario','M1J5K2');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300123','ninja','cruise','6475237890','herry12en@yahoo.com','vaughan mills','scarborough','ontario','M1J5K3');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300124','mayor','zeelie','6475467890','zisha12en@gmail.com','dollyvarden','scarborough','ontario','M1H5H4');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300125','brahmbhatt','jay','6475469874','zisha1@outlook.com','tuxedo','surat','ontario','300986');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300126','maaz','woran','4165415587','jaja@hotmail.com','milner','suratimar','vietnam','L1S5S5');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300127','kathan','woema','7785415587','raja@gmail.com','ahmed','baroda','japan','J1S5S5');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300128','maazuran','ziktron','7785467890','sha12en@hotmail.com','doli','shach','quebec','M1Z3F5');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300129','abdul','vohra','7455468890','sirbun12en@gmail.com','miloli','kashmir','japan','L1H2Y2');

insert into customer(customer_id,lastname,firstname,phone_numer,email,street,city,province,zip)
VALUES ('300130','bhai','patel','9898468890','patelsaheb@gmail.com','choppati','mumbai','india','388001');




insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125746,'Zolo','19-feb-25','65','100','Onion','2','40','Antibiotics');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125747,'Lcoin','20-jan-11','25','300','LactMed','4','70','Narcotic');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125748,'zotop','21-Apr-7','100','200','Ginseng','45','80','Narcotic');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125749,'Ciano','2-Sep-6','53','150','Liverfoo','','45','antidepresent');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125750,'Indigo','23-nov-12','53','300','Dstep','','35','Fluenza');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125751,'violet','24-nov-22','43','200','dhestep','8','80','ayurveda');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125752,'blade','24-oct-25','30','205','pistep','80','100','homeo');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125753,'machis','26-oct-25','2','5','prepaz','','','rezaz');

insert into DRUGS(drug_id, drug_name, expiry_date, price, power, ingredients ,min_age_range, max_age_range,categories)
values
(125754,'khatoh','18-sep-25','12','45','hemaz','','12','vebar');



insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789112','300121','17-sep-11','40','120','105','N');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789113','300122','16-oct-11','10','10','100','Y');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789114','300123','15-JAN-11','19','19','100','Y');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789115','300123','14-JAN-11','109','109','1000','Y');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789116','300122','14-JAN-112','110','100','1','N');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789117','300121','14-dec-12','1110','100','1000','N');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789118','300121','14-jun-10','100','100','1000','Y');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789119','300121','14-jul-10','1000','1000','1000','Y');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789120','300122','15-jun-10','900','1000','1000','Y');

insert into payment( payment_id , customer_id , date_of_purchase , amount_due , amount_paid , balance ,has_paid)
values('789121','300123','18-Mar-8','900','10','100','Y');



insert into orderitems (order_id, drug_id ,quantity , cost)
values(312456,'125745','2','66');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325419,'125747','10','250');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325523,'125748','1','100');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325235,'125749','1','49');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325411,'125750','10','530');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(327523,'125748','1','100');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(312426,'125745','2','66');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325439,'125747','1','25');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(327235,'125749','3','49');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(327411,'125750','1','53');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(312456,'125745','2','66');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325419,'125747','10','250');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325523,'125748','1','100');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325235,'125749','1','49');

insert into orderitems (order_id, drug_id ,quantity , cost)
values(325411,'125750','10','530');

select c.firstname, d.drug_name
from drugs d
join customer c using (c.customer_id)
where power > 150;

select order_id, shipdate
from orders
where shipdate > '01-apr-23';

select d.drug_name, o.order_id, c.city
from drugs d
left outer join orderitems oi using (drug_id)
left outer join orders o (order_id)
left outer join customer using (customer_id);

select customer_id,firstname
from customer
where province ='ontario' and city = 'scarborough';

select distinct customer_id
from orders
where city like('%bai')
and cost > 50;

select c.lastname,c.firstname,c.customer_id
from customer c
join orders o using(customer_id)
where o.street = 'progress'
and o.shipdate > '1-apr-15'
order by c.firtname;
