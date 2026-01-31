IF OBJECT_ID('loan', 'U') IS NOT NULL DROP TABLE loan;
IF OBJECT_ID('policy_rule', 'U') IS NOT NULL DROP TABLE policy_rule;
IF OBJECT_ID('administrator', 'U') IS NOT NULL DROP TABLE administrator;
IF OBJECT_ID('book_copy', 'U') IS NOT NULL DROP TABLE book_copy;
IF OBJECT_ID('book_of_author', 'U') IS NOT NULL DROP TABLE book_of_author;
IF OBJECT_ID('book_category', 'U') IS NOT NULL DROP TABLE book_category;
IF OBJECT_ID('book', 'U') IS NOT NULL DROP TABLE book;
IF OBJECT_ID('publisher', 'U') IS NOT NULL DROP TABLE publisher;
IF OBJECT_ID('librarian', 'U') IS NOT NULL DROP TABLE librarian;
IF OBJECT_ID('author', 'U') IS NOT NULL DROP TABLE author;
IF OBJECT_ID('category', 'U') IS NOT NULL DROP TABLE category;
IF OBJECT_ID('member', 'U') IS NOT NULL DROP TABLE member;
IF OBJECT_ID('loan_detail','U') is not null drop table loan_detail
GO

create table member(
	member_id varchar(20) not null primary key,
	name nvarchar(50),
	address nvarchar(100),
	phone_number varchar(15)
)

create table category (
	category_id varchar(20) not null primary key,
	category_name nvarchar(50)
)

create table author (
	author_id varchar(20) not null primary key,
	author_name nvarchar(50)
)

create table librarian (
	librarian_id varchar(20) not null primary key,
	librarian_name nvarchar(50)
)

create table publisher (
	publisher_id varchar(20) not null primary key,
	publisher_name nvarchar(50)
)

create table book (
	book_id varchar(20) not null primary key,
	publisher_id varchar(20),
	librarian_id varchar(20),
	name_book nvarchar(50),
	release date,
	foreign key (publisher_id) references publisher(publisher_id),
	foreign key (librarian_id) references librarian(librarian_id)
)

create table book_category (
	book_id varchar(20) not null,
	category_id varchar(20) not null,
	foreign key (book_id) references book(book_id),
	foreign key (category_id) references category(category_id),
	primary key (book_id, category_id)
)

create table book_of_author (
	author_id varchar(20) not null,
	book_id varchar(20) not null,
	foreign key (author_id) references author(author_id),
	foreign key (book_id) references book(book_id),
	primary key (author_id, book_id)
)

create table book_copy (
	book_copy_id varchar(20) not null primary key,
	book_id varchar(20),
	foreign key (book_id) references book(book_id)
)

create table administrator (
	admin_id varchar(20) not null primary key,
	admin_name nvarchar(50),
	email nvarchar(50),
	phone_number varchar(15)
)

create table policy_rule (
	policy_id varchar(20) not null primary key,
	admin_id varchar(20) not null,
	effective_date date,
	expiry_date date,
	fine_amount float,
	maximum_loan_period int,
	foreign key (admin_id) references administrator(admin_id)
)

create table loan (
	loan_id varchar(20) not null primary key,
	member_id varchar(20) not null,
	librarian_id varchar(20) not null,
	policy_id varchar(20) not null,
	loan_date date,
	foreign key (member_id) references member(member_id),
	foreign key (librarian_id) references librarian(librarian_id),
	foreign key (policy_id) references policy_rule(policy_id)
)

create table loan_detail (
	book_copy_id varchar(20) not null,
	loan_id varchar(20) not null,
	overdue_date date,
	return_date date,
	sum_of_fine float,
	foreign key (book_copy_id) references book_copy(book_copy_id),
	foreign key (loan_id) references loan(loan_id),
	primary key (loan_id, book_copy_id)

)

