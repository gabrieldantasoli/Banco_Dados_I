CREATE DATABASE nodemysql;

CREATE TABLE books (
	i_id_books Int not null auto_increment,
    s_title_books varchar(255) not null,
    s_pageqtd_books Int not null,
    primary key (i_id_books)
);

delete from books where i_id_books > 0;
select * from books;