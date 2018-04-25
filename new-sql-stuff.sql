CREATE TABLE users (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type varchar (75),
    UserName varchar(75),
    password varchar(75)
);

delimiter $$
drop procedure if exists GetUsers $$

create procedure GetUsers()
begin
	select UserName,password,type from users order by type;
end $$
delimiter ;
