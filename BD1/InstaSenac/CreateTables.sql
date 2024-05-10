create table Countries (
	id serial primary key,
	CountryName varchar(100)
);

create table States (
	id serial primary key,
	CountryID integer,
	StateName varchar(100),
	CONSTRAINT StateCountry FOREIGN KEY (CountryID)
        REFERENCES public.Countries (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Cities (
	id serial primary key,
	StateID integer,
	CityName varchar(100),
	CONSTRAINT CityState FOREIGN KEY (StateID)
        REFERENCES public.States (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

Create table Users (
	id serial primary key,
	username varchar(20),
	name varchar(100),
	email varchar(200),
	password varchar(30),
	user_icon bytea,
	biography varchar(255),
	phonenum varchar(15),
	cityfrom integer,
	statefrom integer,
	countryfrom integer,
	active bool,
	CONSTRAINT UserCity FOREIGN KEY (cityfrom)
        REFERENCES public.Cities (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT UserState FOREIGN KEY (statefrom)
        REFERENCES public.States (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT UserCountry FOREIGN KEY (countryfrom)
        REFERENCES public.Countries (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Posts (
	ID serial primary key,
	UserID integer,
	PostContent bytea,
	PostDescription varchar(500),
	CONSTRAINT PostUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Likes_Posts (
	ID serial primary key,
	PostID integer,
	UserID integer,
	CONSTRAINT LikePost FOREIGN KEY (PostID)
        REFERENCES public.Posts (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT LikeUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Comments_Posts (
	ID serial primary key,
	PostID integer,
	UserID integer,
	Comment varchar(255),
	CONSTRAINT LikePost FOREIGN KEY (PostID)
        REFERENCES public.Posts (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT LikeUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Reels (
	ID serial primary key,
	UserID integer,
	ReelContent bytea,
	ReelDescription varchar(500),
	CONSTRAINT ReelUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Likes_Reels (
	ID serial primary key,
	ReelID integer,
	UserID integer,
	CONSTRAINT LikeReel FOREIGN KEY (ReelID)
        REFERENCES public.Reels (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT LikeUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Comments_Reels (
	ID serial primary key,
	ReelID integer,
	UserID integer,
	Comment varchar(255),
	CONSTRAINT LikeReel FOREIGN KEY (ReelID)
        REFERENCES public.Reels (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT LikeUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Stories (
	ID serial primary key,
	UserID integer,
	StoryContent bytea,
	CFOnly bool,
	CONSTRAINT StoryUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Likes_Stories (
	ID serial primary key,
	StoryID integer,
	UserID integer,
	CONSTRAINT LikeStory FOREIGN KEY (StoryID)
        REFERENCES public.Stories (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT LikeUser FOREIGN KEY (UserID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Friends (
	ID serial primary key,
	OwnerID integer,
	FriendID integer,
	DateAdded timestamp,
	DateRemoved timestamp,
	CONSTRAINT OwnerFriend FOREIGN KEY (OwnerID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT UserFriend FOREIGN KEY (FriendID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Status (
	ID serial primary key,
	StatusName varchar(10)
);

create table FriendRequest (
	ID serial primary key,
	UserFromID integer,
	UserToID integer,
	StatusID integer,
	DateSent timestamp,
	DateReplied timestamp,
	CONSTRAINT RequestFrom FOREIGN KEY (UserFromID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT RequestTo FOREIGN KEY (UserToID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT RequestStatus FOREIGN KEY (StatusID)
        REFERENCES public.Status (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

CREATE TABLE CloseFriends (
	ID serial primary key,
	OwnerID integer,
	FriendID integer,
	CONSTRAINT CloseFriendOwner FOREIGN KEY (OwnerID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT CloseFriendUser FOREIGN KEY (FriendID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

Create table Chats (
	id serial primary key,
	OwnerID integer,
	FriendID integer,
	CONSTRAINT ChatOwner FOREIGN KEY (OwnerID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	CONSTRAINT ChatFriendUser FOREIGN KEY (FriendID)
        REFERENCES public.Users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

create table Types (
	ID serial primary key,
	TypeName varchar(10)
);

create table Chat_Messages (
	id serial primary key,
	ChatID integer,
	MessageType integer,
	DateSent timestamp,
	MessageText varchar(1000),
	MessageOther bytea,
	CONSTRAINT MessageChat FOREIGN KEY (ChatID)
		References public.Chats (id) match simple
		on update no action
		on delete no action,
	CONSTRAINT MessageType FOREIGN KEY (MessageType)
		References public.Types (id) match simple
		on update no action
		on delete no action
);