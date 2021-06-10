GRANT ALL PRIVILEGES ON *.* TO javauser@localhost
    IDENTIFIED BY 'javadude' WITH GRANT OPTION;
create database asm;
use asm;


create table product(
                        id int not null auto_increment primary key,
                        category varchar(200) not null,
                        productName varchar(200) not null,
                        information varchar(1000) not null,
                        ice varchar(10) not null,
                        topping varchar(10) not null,
                        qty int not null
);


INSERT INTO product (category, productName, information, ice, topping, qty) VALUES
('Hot Coffe', 'Caffè Americano', 'Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance. Pro Tip: For an additional boost, ask your barista to try this with an extra shot.', '75%', '100%', 40000),
('Brewed Coffees', 'Blonde Roast', 'Lightly roasted coffee that soft, mellow and flavorful. Easy-drinking on its own and delicious with milk, sugar or flavored with vanilla, caramel or hazelnut.', '50%', 'No', 50000),
('Brewed Coffees', 'Caffè Misto', 'A one-to-one combination of fresh-brewed coffee and steamed milk add up to one distinctly delicious coffee drink remarkably mixed.', '50%', 'No', 40000),
('Brewed Coffees', 'Featured Starbucks Dark Roast Coffee', 'This full-bodied dark roast coffee with bold, robust flavors showcases our roasting and blending artistry—an essential blend of balanced and lingering flavors.', '50%', 'No', 50000);
