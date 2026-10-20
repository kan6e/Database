

CREATE TABLE products1 (
    product_code1 integer PRIMARY KEY,
    name1 varchar(256) NOT NULL,
    pieces_per_package1 integer,
    color1 varchar(50),
    characteristics1 text,
    country_of_origin1 varchar(100),
    manufacturer1 varchar(100),
    shelf_life1 date
);

CREATE TABLE order_contents1 (
    order_number1 integer NOT NULL,
    quantity1 integer,
    package1 varchar(100),
    product_code1 integer NOT NULL REFERENCES products1(product_code1) ON DELETE CASCADE,
    PRIMARY KEY (order_number1, product_code1)
);