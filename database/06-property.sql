CREATE TABLE real_state.property (
	id INT UNSIGNED auto_increment NOT NULL,
	county_id INT UNSIGNED NOT NULL,
	country_id INT UNSIGNED NOT NULL,
	town_id INT UNSIGNED NOT NULL,
	description varchar(255) NULL,
	address varchar(100) NOT NULL,
	image_full varchar(50) NULL,
	image_thumbnail varchar(50) NULL,
	latitude REAL NULL,
	longitude REAL NULL,
	num_bedrooms INT UNSIGNED NULL,
	num_bathrooms INT UNSIGNED NULL,
	price FLOAT NULL,
    type CHAR(1) DEFAULT 'S' NOT NULL COMMENT 'S - Seal, R - Rent',
	property_type_id INT UNSIGNED NOT NULL,
	CONSTRAINT property_PK PRIMARY KEY (id),
    CONSTRAINT property_FK_county FOREIGN KEY (county_id) REFERENCES real_state.county(id),
	CONSTRAINT property_FK_country FOREIGN KEY (country_id) REFERENCES real_state.country(id),
    CONSTRAINT property_FK_town FOREIGN KEY (town_id) REFERENCES real_state.town(id),
    CONSTRAINT property_FK_property_type FOREIGN KEY (property_type_id) REFERENCES real_state.property_type(id),
    CHECK (type in ('S','R'))
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
