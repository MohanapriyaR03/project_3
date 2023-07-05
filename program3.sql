create database BooksDB;
create table BooksDB.Books(id int primary key auto_increment, book_title varchar(20), author varchar(20), genre varchar(20), publication_year int ,price int);
insert into BooksDB.Books values (5, "Human Anatomy" , "sutha" , "biology" , 2002 , 6000),(2, "python" , "chitra" , "programing" , 2008 , 9000),(3, "java" , "priyanka" , "programing" , 2020 , 4000),(4, "physiology" , "prakash" , "biology" , 2034 , 3000),(7, "probability" , "salaivaganan" , "maths" , 20054 , 5000);
create table BooksDB.Authors(id int primary key, Author varchar(20), Publication int);
insert into BooksDB.Authors values (5 , "guru" , 2005 ), (4 , "arun" , 2134) , (6 , "sandhiya" , 2004);
select book_title from BooksDB.Books;
update BooksDB.Books set price= 7800 where id=4;
delete from BooksDB.Books where  id=3;
select avg(price) from BooksDB.Books;
select *from BooksDB.Books;
select * from BooksDB.Authors;
use BooksDB;
select Books.id,Books.book_title,Books.author,Books.genre,Books.publication_year,Books.price, Authors.id
from Books 
inner join Authors
on Books.id=Authors.id;
select Books.id,Books.book_title,Books.author,Books.genre,Books.publication_year,Books.price, Authors.id
from Books 
left join Authors
on Books.id=Authors.id;
select Books.id,Books.book_title,Books.author,Books.genre,Books.publication_year,Books.price, Authors.id
from Books 
right join Authors
on Books.id=Authors.id;
