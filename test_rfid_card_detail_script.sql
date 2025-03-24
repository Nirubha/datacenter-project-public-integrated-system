CREATE TABLE public.Users(
    user_id INT PRIMARY KEY NOT NULL ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT into public.users(user_id,first_name,last_name,email) VALUES (1001, 'Test', 'User-1', 'testuser1@test.com');
INSERT into public.users(user_id,first_name,last_name,email) VALUES (1002, 'Test', 'User-2', 'testuser2@test.com');
INSERT into public.users(user_id,first_name,last_name,email) VALUES (1003, 'Test', 'User-3', 'testuser3@test.com');
INSERT into public.users(user_id,first_name,last_name,email) VALUES (1004, 'Test', 'User-4', 'testuser4@test.com');
INSERT into public.users(user_id,first_name,last_name,email) VALUES (1005, 'Test', 'User-5', 'testuser5@test.com');
INSERT into public.users(user_id,first_name,last_name,email) VALUES (1006, 'Test', 'User-6', 'testuser6@test.com');
INSERT into public.users(user_id,first_name,last_name,email) VALUES (1007, 'Test', 'User-7', 'testuser7@test.com');
INSERT into public.users(user_id,first_name,last_name,email) VALUES (1008, 'Test', 'User-8', 'testuser8@test.com');

CREATE SCHEMA rfid
CREATE TABLE rfid.Card_Detail(
    card_id VARCHAR(36) PRIMARY KEY NOT NULL,
    user_id INT NULL REFERENCES public.Users(user_id),
    balance DECIMAL(10,2) NOT NULL,
    isActive BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('61db753a-96cd-11ee-b9d1-0242ac120002', 1001, 80, True);
INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('f00523f2-96cc-11ee-b9d1-0242ac120002', 1002, 150, True);
INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('f005258c-96cc-11ee-b9d1-0242ac120002', 1003, 80, True);
INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('f0052730-96cc-11ee-b9d1-0242ac120002', 1004, 90, True);
INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('f00529b0-96cc-11ee-b9d1-0242ac120002', 1005, 60, True);
INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('f0052884-96cc-11ee-b9d1-0242ac120002', 1006, 110, True);
INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('f0052adc-96cc-11ee-b9d1-0242ac120002', 1007, 50, True);
INSERT into rfid.Card_Detail(card_id, user_id, balance, isActive) VALUES ('f0052eba-96cc-11ee-b9d1-0242ac120002', 1008, 30, True);

Select * from rfid.card_detail

