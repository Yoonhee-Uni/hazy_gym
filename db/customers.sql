DROP DATABASE IF EXISTS hazygym;
CREATE DATABASE hazygym;

\c hazygym

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	account_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	UNIQUE (account_id),
	UNIQUE (first_name, last_name)
);


CREATE TABLE check_in(
	account_id INT REFERENCES customers(account_id),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	check_in TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(account_id) REFERENCES customers(account_id),
	FOREIGN KEY(first_name,last_name) REFERENCES customers(first_name, last_name)
);

insert into customers (first_name, last_name, email, gender) values ('Wadsworth', 'Bellay', 'wbellay0@devhub.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Wallas', 'Edington', 'wedington1@bandcamp.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Caleb', 'Youson', 'cyouson2@npr.org', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Nickolas', 'Sall', 'nsall3@independent.co.uk', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Base', 'Korn', 'bkorn4@ezinearticles.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Spenser', 'Cruess', 'scruess5@economist.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Damaris', 'Fearby', 'dfearby6@toplist.cz', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Winslow', 'Foucher', 'wfoucher7@marriott.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Jerri', 'Gillfillan', 'jgillfillan8@51.la', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Jade', 'Baulcombe', 'jbaulcombe9@senate.gov', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Carlina', 'Eighteen', 'ceighteena@cisco.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Hadrian', 'McDougald', 'hmcdougaldb@xrea.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Hanny', 'Woodson', 'hwoodsonc@friendfeed.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Isacco', 'Dehmel', 'idehmeld@scientificamerican.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Buffy', 'Hug', 'bhuge@biblegateway.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Chicky', 'Pantlin', 'cpantlinf@boston.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Gaye', 'Corse', 'gcorseg@nhs.uk', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Garvy', 'Brasher', 'gbrasherh@tinypic.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Ewan', 'Hawsby', 'ehawsbyi@shinystat.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Madelena', 'Scutching', 'mscutchingj@bizjournals.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Danyelle', 'Renac', 'drenack@abc.net.au', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Chevalier', 'Hegges', 'cheggesl@tumblr.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Dannie', 'Slocom', 'dslocomm@craigslist.org', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Rozele', 'Dawtry', 'rdawtryn@washingtonpost.com', 'Genderfluid');
insert into customers (first_name, last_name, email, gender) values ('Viole', 'Emanuelov', 'vemanuelovo@bbb.org', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Gregoor', 'Joffe', 'gjoffep@weebly.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Orella', 'Meenehan', 'omeenehanq@cornell.edu', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Stacey', 'Brend', 'sbrendr@scribd.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Rosita', 'Beckwith', 'rbeckwiths@salon.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Claiborne', 'Linnit', 'clinnitt@china.com.cn', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Lanae', 'Escalera', 'lescalerau@qq.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Dasi', 'Ivashev', 'divashevv@umich.edu', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Marlene', 'Gorriessen', 'mgorriessenw@stumbleupon.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Mattie', 'Bysouth', 'mbysouthx@histats.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Arne', 'Brooks', 'abrooksy@ox.ac.uk', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Bradly', 'MacIlraith', 'bmacilraithz@yandex.ru', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Cathyleen', 'Castro', 'ccastro10@ucla.edu', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Arny', 'Haburne', 'ahaburne11@angelfire.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Shayna', 'Threlfall', 'sthrelfall12@elegantthemes.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Giraldo', 'McMullen', 'gmcmullen13@umich.edu', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Merv', 'Threlkeld', 'mthrelkeld14@discuz.net', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Prentiss', 'Mableson', 'pmableson15@cmu.edu', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Aleta', 'Pierpoint', 'apierpoint16@bloglines.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Barron', 'Flament', 'bflament17@com.com', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Lyssa', 'Priestnall', 'lpriestnall18@naver.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Toby', 'April', 'tapril19@vk.com', 'Female');
insert into customers (first_name, last_name, email, gender) values ('Cass', 'Gauche', 'cgauche1a@bbc.co.uk', 'Genderqueer');
insert into customers (first_name, last_name, email, gender) values ('Padget', 'Murdy', 'pmurdy1b@wisc.edu', 'Male');
insert into customers (first_name, last_name, email, gender) values ('Genna', 'Alban', 'galban1c@edublogs.org', 'Bigender');
insert into customers (first_name, last_name, email, gender) values ('Shina', 'Ughi', 'sughi1d@amazonaws.com', 'Female');

SELECT * FROM customers;