CREATE TABLE product (
                         id BIGSERIAL PRIMARY KEY,
                         description VARCHAR(255) NOT NULL,
                         price NUMERIC(10,2) NOT NULL,
                         quantity INT NOT NULL DEFAULT 0
);
