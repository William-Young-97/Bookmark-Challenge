CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com/'),
 ('http://www.askjeeves.com'), 
 ('http://www.twitter.com/'), 
('http://www.google.com/') ;

DELETE bookmarks(id = 2) ;

UPDARE