USE timey;

-- User Table
insert into users (user_name, first_name, last_name) values ('hollomat', 'Matt', 'Holloway');
insert into users (user_name, first_name, last_name) values ('petermur', 'Pete', 'Murray');
insert into users (user_name, first_name, last_name) values ('georgcha', 'Charlotte', 'George');

-- Category Table
insert into categories(category_name) values('Sprint');
insert into categories(category_name) values('1:1');
insert into categories(category_name) values('Weekly Ops');
insert into categories(category_name) values('CD Epic');
insert into categories(category_name) values('Interview');
insert into categories(category_name) values('OE');

-- 
insert into cost(avg_cost) values('200.00');

select * from users;
select * from categories;
select * from cost;

commit;