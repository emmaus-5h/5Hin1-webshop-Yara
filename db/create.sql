--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  model VARCHAR(255),
  productiejaar_id INTEGER
  );

  CREATE TABLE productiejaren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)

  );

  CREATE TABLE kleuren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)

  );
  
 

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, model, productiejaar_id) values ('Marmer Terquoise', 'Dit hoesje is heel populair onder jongeren. Het was de best verkochte hoesje van 2021.', '816905633-0', 10.5, 'iPhone 11 ' , 3);
insert into products (name, description, code, price, model, productiejaar_id) values ('Beige Bees', 'Vrolijk hoesje met beige achtergrond en bijen.', '077030122-3', 11, 'iPhone 11 ' , 1);
insert into products (name, description, code, price, model, productiejaar_id) values ('Broken Black', 'Zwart is normaal basic, broken Black hoesje niet.', '445924201-X', 13.5, 'iPhone 11 ' , 2);
insert into products (name, description, code, price, model, productiejaar_id) values ('Aqua Sea Blue', 'Met dit hoesje kijk je door je ogen door de zee', '693155505-7', 13.5, 'iPhone 11 ' , 3);
insert into products (name, description, code, price, model, productiejaar_id) values ('Happy Autumn', 'De vormen geven een warme gevoel en de kleuren een herfstgevoel', '686928463-6', 14, 'iPhone 11 ' , 2);
insert into products (name, description, code, price, model, productiejaar_id) values ('Special Honeycomb', 'Speciale honingraat met speciale kleuren.', '492662523-7', 14, 'iPhone 11 ' , 1);

insert into productiejaren (name) values ('2020');
insert into productiejaren (name) values ('2021'); 
insert into productiejaren (name) values ('2022');

insert into kleuren (name) values ('overige');
insert into kleuren (name) values ('beige');
insert into kleuren (name) values ('blauw');
insert into kleuren (name) values ('geel');
insert into kleuren (name) values ('terquoise');