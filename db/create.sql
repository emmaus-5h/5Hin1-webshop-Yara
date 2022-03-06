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
  productiejaar_id INTEGER,
  kleuren_id INTEGER,
  rating_id INTEGER
  );

  CREATE TABLE productiejaren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
  );

  CREATE TABLE kleuren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
  );
  
  CREATE TABLE rating (
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

insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Marmer Terquoise', 'Dit hoesje is heel populair onder jongeren. Het was de best verkochte hoesje van 2021.', '816905633-0', 10.5, 'iPhone 11, iPhone 12 en iPhone 13' , 3, 5, 2);
insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Beige Bees', 'Vrolijk hoesje met beige achtergrond en bijen.', '077030122-3', 11, 'iPhone 12 en iPhone 13' , 1, 4, 1);
insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Lightning Bolt', 'Een zwarte hoesje met een bliksemschicht in het midden.', '445924201-X', 13.5, 'iPhone 11' , 2, 6, 1);
insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Aqua Sea Blue', 'Met dit hoesje kijk je door je ogen door de zee', '693155505-7', 13.5, 'iPhone 11, iPhone 12 en iPhone 13 ' , 3, 3, 3);
insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Happy Autumn', 'De vormen geven een warme gevoel en de kleuren een herfstgevoel', '686928463-6', 14, 'iPhone 11, iPhone 12 en iPhone 13' , 2, 1, 1);
insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Broken Glass', 'Een coole gebroken zwarte hoesje om jouw onhandige kant te laten zien.', '492662523-7', 14, 'iPhone 11 en iPhone 12 ' , 1, 6, 1);
  insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Special Honeycomb', 'Dit hoesje zorgt ervoor dat bijen jaloers worden. zo eentje zullen ze nooit vinden', '492662523-6', 14, 'iPhone 11 en iPhone 12' , 1, 1, 1);
  insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Happy Donuts', 'Wie wordt er nou niet vrolijk van donuts? Voor de echte donutlovers is dit hoesje perfect', '492662523-9', 14, 'iPhone 11 en iPhone 12' , 3, 7, 3);
  insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Snake Print', 'Dit hoesje heeft een leuk slangen printje.', '492662523-3', 14, 'iPhone 11 en iPhone 12' , 2, 1, 2);
  insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Golden Stars', 'Leuke sterren op een roze achtergrond. Are you gonna shine like the stars with this case?', '492662523-1', 14, 'iPhone 11 en iPhone 12' , 3, 8, 2);
  insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Pink Flamingo', 'Vrolijk hoesje met roze flamingos', '492662523-2', 14, 'iPhone 11 en iPhone 13' , 1, 8, 3);
  insert into products (name, description, code, price, model, productiejaar_id, kleuren_id, rating_id) values ('Tropical leaves', 'Basic hoesje met tropische bladeren', '492662523-4', 14, 'iPhone 11' , 1, 7, 1);

insert into productiejaren (name) values ('2020');
insert into productiejaren (name) values ('2021'); 
insert into productiejaren (name) values ('2022');

insert into kleuren (name) values ('overige');
insert into kleuren (name) values ('beige');
insert into kleuren (name) values ('blauw');
insert into kleuren (name) values ('geel');
insert into kleuren (name) values ('terquoise');
insert into kleuren (name) values ('zwart');
insert into kleuren (name) values ('groen');
insert into kleuren (name) values ('roze');

insert into rating (name) values ('⭐⭐⭐');
insert into rating (name) values ('⭐⭐');
insert into rating (name) values ('⭐');



  /* de 1:n samenvoegen tabellen*/
  

SELECT productiejaren.id, productiejaren.name FROM productiejaren
  JOIN products
ON productiejaren.id = product.productiejaar_id

  /* aangezien de console bij 2 van bij elkaargevoegde tabellen error geeft, zet ik hem als commentaar neer*/

  /*
  SELECT rating.id, rating.name FROM rating
INNER JOIN products
ON rating.id = products.rating_id
*/