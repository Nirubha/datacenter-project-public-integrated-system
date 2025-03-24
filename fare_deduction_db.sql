CREATE TABLE fare.Fare_detail(
    fare_id INT PRIMARY KEY NOT NULL,
    mode_of_transport VARCHAR(50) UNIQUE NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);

CREATE TABLE fare.Fare_Capping(
    fare_capping_id INT PRIMARY KEY NOT NULL,
    fare_id INT NOT NULL REFERENCES fare.Fare_detail(fare_id),
    time_period INT NOT NULL,
    max_amount  decimal(10,2) NOT NULL
);

CREATE TABLE fare.fare_mode(mode_id INT PRIMARY KEY, fare_type boolean DEFAULT FALSE);

CREATE TABLE fare.zone_detail(
    zone_id INT PRIMARY KEY,
    zone_no INT NOT NULL UNIQUE,
    fare_id INT NOT NULL REFERENCES fare.Fare_detail(fare_id),
    mode_id INT NOT NULL REFERENCES fare.fare_mode(mode_id),
);

CREATE TABLE fare.Fare_Deduction(
    deduction_id SERIAL PRIMARY KEY ,
    card_id VARCHAR(36) NOT NULL REFERENCES rfid.Card_Detail(card_id),
    zone_no INT NOT NULL,
    mode_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    tagged_on_timestamp TIMESTAMP NOT NULL,
    expiration_time TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);