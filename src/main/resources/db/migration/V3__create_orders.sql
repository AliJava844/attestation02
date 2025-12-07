CREATE TABLE orders (
                        id BIGSERIAL PRIMARY KEY,
                        product_id BIGINT NOT NULL,
                        customer_id BIGINT NOT NULL,
                        order_date TIMESTAMP NOT NULL DEFAULT NOW(),
                        qty INT NOT NULL,

                        CONSTRAINT fk_order_product FOREIGN KEY (product_id) REFERENCES product(id),
                        CONSTRAINT fk_order_customer FOREIGN KEY (customer_id) REFERENCES customer(id)
);
