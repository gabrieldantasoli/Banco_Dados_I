CREATE DATABASE nodesequelize;

CREATE TABLE IF NOT EXISTS `Users` (`id` INTEGER NOT NULL auto_increment , `name` VARCHAR(255) NOT NULL, `occupation` VARCHAR(255), `newsletter` TINYINT(1), `createdAt` DATETIME NOT NULL, `updatedAt` DATETIME NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB;

SELECT * FROM users;
delete from addresses where id > 0;
select * from addresses;
delete from users where id > 0;

select * from users U
inner join addresses a on a.UserId = U.id;