CREATE TABLE real_state.property_type (
	id INT UNSIGNED auto_increment NOT NULL,
	title varchar(30) NOT NULL,
    description varchar(255),
	CONSTRAINT county_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
