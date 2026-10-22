CREATE TABLE products (
    product_code INTEGER PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    pieces_per_package INTEGER,
    color VARCHAR(50),
    characteristics TEXT,
    country_of_origin VARCHAR(100),
    manufacturer VARCHAR(100),
    shelf_life DATE
);

CREATE TABLE order_contents (
    order_number INTEGER NOT NULL,
    quantity INTEGER,
    package VARCHAR(100),
    product_code INTEGER NOT NULL,
    CONSTRAINT fk_order_contents_product
        FOREIGN KEY (product_code)
        REFERENCES products(product_code)
        ON DELETE CASCADE,
    PRIMARY KEY (order_number, product_code)
);
