CREATE DATABASE passengers64;

CREATE TABLE riders (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  age INTEGER,
  board_at VARCHAR(100),
  alight_at VARCHAR(100),
  img_url VARCHAR(400)
);

CREATE TABLE reviews (
  id SERIAL4 PRIMARY KEY,
  content TEXT NOT NULL,
  rider_id INTEGER NOT NULL,
  FOREIGN KEY (rider_id) REFERENCES riders (id) ON DELETE RESTRICT,
  FOREGN KEY (user_id) REFERENCES users (id) ON DELETE RESTRICT   
);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(200),
  email VARCHAR(300),
  password_digest VARCHAR(400)
);

INSERT INTO riders (name, age, board_at, alight_at, img_url) 
VALUES ('bob', 42, 'hawthorn road', 'high street','https://cdn.fstoppers.com/wp-content/uploads/2013/06/1.jpg');

INSERT INTO riders (name, age, board_at, alight_at, img_url) 
VALUES ('hat lady', 38, 'inkerman road', 'chapel street', 'https://i.ebayimg.com/thumbs/images/g/KsIAAOSwg8taF6KM/s-l225.jpg');

INSERT INTO riders (name, age, board_at, alight_at, img_url) 
VALUES ('ben', 33, 'glenhuntly road', 'lt collins street', 'http://tompresskit.presskit247.com/images/SiteImages/Site412/Drew.jpg');

INSERT INTO riders (name, age, board_at, alight_at, img_url) 
VALUES ('fiona', 27, 'wattletree road', 'queensberry street', 'https://petapixel.com/assets/uploads/2014/11/olga.jpg');

INSERT INTO reviews (content, rider_id)
VALUES ('wow this person needs a shower!', 2);

