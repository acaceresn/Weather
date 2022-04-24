DROP TABLE IF EXISTS LOCATION;

CREATE TABLE LOCATION (
  location_id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  city VARCHAR(255),
  latitud DOUBLE NOT NULL,
  longitud DOUBLE NOT NULL,
  state VARCHAR(255)
);

INSERT INTO location (city,latitud,longitud,state) VALUES  ('Dallas',2.0223,2.3349,'Texas');
INSERT INTO location (city,latitud,longitud,state) VALUES  ('Miami',9.6723,8.9349,'Florida');
INSERT INTO location (city,latitud,longitud,state) VALUES  ('Houston',7.8923,12.7349,'Texas');
INSERT INTO location (city,latitud,longitud,state) VALUES  ('Atlanta',6.8723,15.9349,'Georgia');
INSERT INTO location (city,latitud,longitud,state) VALUES  ('Hallandale',12.5623,32.4349,'Florida');

DROP TABLE IF EXISTS WEATHER;

CREATE TABLE WEATHER (
  id BIGINT NOT NULL  PRIMARY KEY,
  date DATE,
  location_id BIGINT,
  CONSTRAINT FK_LOCATION_ID FOREIGN KEY (location_id) REFERENCES LOCATION(location_id) 
);

INSERT INTO weather (id, date, location_id) VALUES  (1, '2020-09-15',1);
INSERT INTO weather (id, date, location_id) VALUES  (2, '2020-09-15',2);
INSERT INTO weather (id, date, location_id) VALUES  (3, '2020-09-15',3);
INSERT INTO weather (id, date, location_id) VALUES  (4, '2022-02-20',4);
INSERT INTO weather (id, date, location_id) VALUES  (5, '2022-02-20',5);  

DROP TABLE IF EXISTS TEMPERATURE;

CREATE TABLE TEMPERATURE (
  temperature_id BIGINT AUTO_INCREMENT NOT NULL  PRIMARY KEY,
  hour INTEGER NOT NULL,
  temperature DOUBLE NOT NULL,
  id BIGINT,
  CONSTRAINT FK_WEATHER_ID FOREIGN KEY (id) REFERENCES WEATHER(id) 
);

INSERT INTO temperature (hour, temperature, id) VALUES (0,30.0,1);
INSERT INTO temperature (hour, temperature, id) VALUES (1,2.1,1);
INSERT INTO temperature (hour, temperature, id) VALUES (2,11.2,1);
INSERT INTO temperature (hour, temperature, id) VALUES (3,110.1,1);
INSERT INTO temperature (hour, temperature, id) VALUES (4,21412.7,1);
INSERT INTO temperature (hour, temperature, id) VALUES (5,1873.0,1);
INSERT INTO temperature (hour, temperature, id) VALUES (6,182.9,1);
INSERT INTO temperature (hour, temperature, id) VALUES (7,1821.2,1);
INSERT INTO temperature (hour, temperature, id) VALUES (8,209.2,1);
INSERT INTO temperature (hour, temperature, id) VALUES (9,39.2,1);
INSERT INTO temperature (hour, temperature, id) VALUES (10,52.9,1);
INSERT INTO temperature (hour, temperature, id) VALUES (11,2121.0,1);
INSERT INTO temperature (hour, temperature, id) VALUES (12,240.3,1);
INSERT INTO temperature (hour, temperature, id) VALUES (13,52.3,1);
INSERT INTO temperature (hour, temperature, id) VALUES (14,344.1,1);
INSERT INTO temperature (hour, temperature, id) VALUES (15,1023.2,1);
INSERT INTO temperature (hour, temperature, id) VALUES (16,1241.2,1);
INSERT INTO temperature (hour, temperature, id) VALUES (17,12.1,1);
INSERT INTO temperature (hour, temperature, id) VALUES (18,124.4,1);
INSERT INTO temperature (hour, temperature, id) VALUES (19,124.6,1);
INSERT INTO temperature (hour, temperature, id) VALUES (20,18.6,1);
INSERT INTO temperature (hour, temperature, id) VALUES (21,183.2,1);
INSERT INTO temperature (hour, temperature, id) VALUES (22,224.9,1);
INSERT INTO temperature (hour, temperature, id) VALUES (23,3423.3,1);
INSERT INTO temperature (hour, temperature, id) VALUES (0,30.0,2);
INSERT INTO temperature (hour, temperature, id) VALUES (1,2.1,2);
INSERT INTO temperature (hour, temperature, id) VALUES (2,11.2,2);
INSERT INTO temperature (hour, temperature, id) VALUES (3,110.1,2);
INSERT INTO temperature (hour, temperature, id) VALUES (4,21412.7,2);
INSERT INTO temperature (hour, temperature, id) VALUES (5,1873.0,2);
INSERT INTO temperature (hour, temperature, id) VALUES (6,182.9,2);
INSERT INTO temperature (hour, temperature, id) VALUES (7,1821.2,2);
INSERT INTO temperature (hour, temperature, id) VALUES (8,209.2,2);
INSERT INTO temperature (hour, temperature, id) VALUES (9,39.2,2);
INSERT INTO temperature (hour, temperature, id) VALUES (10,52.9,2);
INSERT INTO temperature (hour, temperature, id) VALUES (11,2121.0,2);
INSERT INTO temperature (hour, temperature, id) VALUES (12,240.3,2);
INSERT INTO temperature (hour, temperature, id) VALUES (13,52.3,2);
INSERT INTO temperature (hour, temperature, id) VALUES (14,344.1,2);
INSERT INTO temperature (hour, temperature, id) VALUES (15,1023.2,2);
INSERT INTO temperature (hour, temperature, id) VALUES (16,1241.2,2);
INSERT INTO temperature (hour, temperature, id) VALUES (17,12.1,2);
INSERT INTO temperature (hour, temperature, id) VALUES (18,124.4,2);
INSERT INTO temperature (hour, temperature, id) VALUES (19,124.6,2);
INSERT INTO temperature (hour, temperature, id) VALUES (20,18.6,2);
INSERT INTO temperature (hour, temperature, id) VALUES (21,183.2,2);
INSERT INTO temperature (hour, temperature, id) VALUES (22,224.9,2);
INSERT INTO temperature (hour, temperature, id) VALUES (23,3423.3,2);
INSERT INTO temperature (hour, temperature, id) VALUES (0,30.0,3);
INSERT INTO temperature (hour, temperature, id) VALUES (1,2.1,3);
INSERT INTO temperature (hour, temperature, id) VALUES (2,11.2,3);
INSERT INTO temperature (hour, temperature, id) VALUES (3,110.1,3);
INSERT INTO temperature (hour, temperature, id) VALUES (4,21412.7,3);
INSERT INTO temperature (hour, temperature, id) VALUES (5,1873.0,3);
INSERT INTO temperature (hour, temperature, id) VALUES (6,182.9,3);
INSERT INTO temperature (hour, temperature, id) VALUES (7,1821.2,3);
INSERT INTO temperature (hour, temperature, id) VALUES (8,209.2,3);
INSERT INTO temperature (hour, temperature, id) VALUES (9,39.2,3);
INSERT INTO temperature (hour, temperature, id) VALUES (10,52.9,3);
INSERT INTO temperature (hour, temperature, id) VALUES (11,2121.0,3);
INSERT INTO temperature (hour, temperature, id) VALUES (12,240.3,3);
INSERT INTO temperature (hour, temperature, id) VALUES (13,52.3,3);
INSERT INTO temperature (hour, temperature, id) VALUES (14,344.1,3);
INSERT INTO temperature (hour, temperature, id) VALUES (15,1023.2,3);
INSERT INTO temperature (hour, temperature, id) VALUES (16,1241.2,3);
INSERT INTO temperature (hour, temperature, id) VALUES (17,12.1,3);
INSERT INTO temperature (hour, temperature, id) VALUES (18,124.4,3);
INSERT INTO temperature (hour, temperature, id) VALUES (19,124.6,3);
INSERT INTO temperature (hour, temperature, id) VALUES (20,18.6,3);
INSERT INTO temperature (hour, temperature, id) VALUES (21,183.2,3);
INSERT INTO temperature (hour, temperature, id) VALUES (22,224.9,3);
INSERT INTO temperature (hour, temperature, id) VALUES (23,3423.3,3);
INSERT INTO temperature (hour, temperature, id) VALUES (0,30.0,4);
INSERT INTO temperature (hour, temperature, id) VALUES (1,2.1,4);
INSERT INTO temperature (hour, temperature, id) VALUES (2,11.2,4);
INSERT INTO temperature (hour, temperature, id) VALUES (3,110.1,4);
INSERT INTO temperature (hour, temperature, id) VALUES (4,21412.7,4);
INSERT INTO temperature (hour, temperature, id) VALUES (5,1873.0,4);
INSERT INTO temperature (hour, temperature, id) VALUES (6,182.9,4);
INSERT INTO temperature (hour, temperature, id) VALUES (7,1821.2,4);
INSERT INTO temperature (hour, temperature, id) VALUES (8,209.2,4);
INSERT INTO temperature (hour, temperature, id) VALUES (9,39.2,4);
INSERT INTO temperature (hour, temperature, id) VALUES (10,52.9,4);
INSERT INTO temperature (hour, temperature, id) VALUES (11,2121.0,4);
INSERT INTO temperature (hour, temperature, id) VALUES (12,240.3,4);
INSERT INTO temperature (hour, temperature, id) VALUES (13,52.3,4);
INSERT INTO temperature (hour, temperature, id) VALUES (14,344.1,4);
INSERT INTO temperature (hour, temperature, id) VALUES (15,1023.2,4);
INSERT INTO temperature (hour, temperature, id) VALUES (16,1241.2,4);
INSERT INTO temperature (hour, temperature, id) VALUES (17,12.1,4);
INSERT INTO temperature (hour, temperature, id) VALUES (18,124.4,4);
INSERT INTO temperature (hour, temperature, id) VALUES (19,124.6,4);
INSERT INTO temperature (hour, temperature, id) VALUES (20,18.6,4);
INSERT INTO temperature (hour, temperature, id) VALUES (21,183.2,4);
INSERT INTO temperature (hour, temperature, id) VALUES (22,224.9,4);
INSERT INTO temperature (hour, temperature, id) VALUES (23,3423.3,4);
INSERT INTO temperature (hour, temperature, id) VALUES (0,30.0,5);
INSERT INTO temperature (hour, temperature, id) VALUES (1,2.1,5);
INSERT INTO temperature (hour, temperature, id) VALUES (2,11.2,5);
INSERT INTO temperature (hour, temperature, id) VALUES (3,110.1,5);
INSERT INTO temperature (hour, temperature, id) VALUES (4,21412.7,5);
INSERT INTO temperature (hour, temperature, id) VALUES (5,1873.0,5);
INSERT INTO temperature (hour, temperature, id) VALUES (6,182.9,5);
INSERT INTO temperature (hour, temperature, id) VALUES (7,1821.2,5);
INSERT INTO temperature (hour, temperature, id) VALUES (8,209.2,5);
INSERT INTO temperature (hour, temperature, id) VALUES (9,39.2,5);
INSERT INTO temperature (hour, temperature, id) VALUES (10,52.9,5);
INSERT INTO temperature (hour, temperature, id) VALUES (11,2121.0,5);
INSERT INTO temperature (hour, temperature, id) VALUES (12,240.3,5);
INSERT INTO temperature (hour, temperature, id) VALUES (13,52.3,5);
INSERT INTO temperature (hour, temperature, id) VALUES (14,344.1,5);
INSERT INTO temperature (hour, temperature, id) VALUES (15,1023.2,5);
INSERT INTO temperature (hour, temperature, id) VALUES (16,1241.2,5);
INSERT INTO temperature (hour, temperature, id) VALUES (17,12.1,5);
INSERT INTO temperature (hour, temperature, id) VALUES (18,124.4,5);
INSERT INTO temperature (hour, temperature, id) VALUES (19,124.6,5);
INSERT INTO temperature (hour, temperature, id) VALUES (20,18.6,5);
INSERT INTO temperature (hour, temperature, id) VALUES (21,183.2,5);
INSERT INTO temperature (hour, temperature, id) VALUES (22,224.9,5);
INSERT INTO temperature (hour, temperature, id) VALUES (23,3423.3,5);
  

