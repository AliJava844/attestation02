Схема БД
Таблицы:
1. product (товар)
| поле        | тип            |
| ----------- | -------------- |
| id          | BIGSERIAL (PK) |
| description | VARCHAR(255)   |
| price       | NUMERIC(10,2)  |
| quantity    | INT            |

2. customer (покупатель)
| поле       | тип            |
| ---------- | -------------- |
| id         | BIGSERIAL (PK) |
| first_name | VARCHAR(100)   |
| last_name  | VARCHAR(100)   |

3. orders (заказ)
| поле        | тип                       |
| ----------- | ------------------------- |
| id          | BIGSERIAL (PK)            |
| product_id  | BIGINT (FK → product.id)  |
| customer_id | BIGINT (FK → customer.id) |
| order_date  | TIMESTAMP                 |
| qty         | INT                       |
