drop table if exists member 
GO
create table member(
	member_id varchar not null primary key,
	name nvarchar(50),
	address nvarchar(50),
	phone_number float
)

drop table if exists category
go
create table category (
	category_id varchar not null primary key,
	category_name nvarchar
)

drop table if exists author
go
create table author (
	author_id varchar not null primary key,
	author_name nvarchar
)

drop table if exists librarian
go
create table librarian (
	librarian_id varchar not null primary key,
	librarian_name nvarchar
)

drop table if exists publisher
go
create table publisher (
	publisher_id varchar not null primary key,
	publisher_name nvarchar
)

drop table if exists book
go
create table book (
	book_id varchar not null primary key,
	publisher_id varchar,
	librarian_id varchar,
	name_book nvarchar,
	release date,
	foreign key (publisher_id) references publisher(publisher_id),
	foreign key (librarian_id) references librarian(librarian_id)
)

drop table if exists book_category
go
create table book_category (
	book_id varchar not null,
	category_id varchar not null,
	foreign key (book_id) references book(book_id),
	foreign key (category_id) references category(category_id),
	primary key (book_id, category_id)
)

drop table if exists book_of_author 
go
create table book_of_author (
	author_id varchar not null,
	book_id varchar not null,
	foreign key (author_id) references author(author_id),
	foreign key (book_id) references book(book_id),
	primary key (author_id, book_id)
)

drop table if exists book_copy
go
create table book_copy (
	book_copy_id varchar not null primary key,
	book_id varchar,
	foreign key (book_id) references book(book_id)
)

drop table if exists administrator
go
create table administrator (
	admin_id varchar not null primary key,
	admin_name nvarchar,
	email nvarchar,
	phone_number float
)

drop table if exists policy_rule
go
create table policy_rule (
	policy_id varchar not null primary key,
	admin_id varchar not null,
	effective_date date,
	expiry_date date,
	fine_amount float,
	maximum_loan_period int,
	foreign key (admin_id) references administrator(admin_id)
)

drop table if exists loan
go
create table loan (
	loan_id varchar not null primary key,
	member_id varchar not null,
	book_copy_id varchar not null,
	librarian_id varchar not null,
	policy_id varchar not null,
	loan_date date,
	overdue_date date,
	sum_of_fine float,
	return_date date,
	foreign key (member_id) references member(member_id),
	foreign key (book_copy_id) references book_copy(book_copy_id),
	foreign key (librarian_id) references librarian(librarian_id),
	foreign key (policy_id) references policy_rule(policy_id)
)



