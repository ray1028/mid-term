INSERT INTO  customers
    (first_name, last_name, email, phone,current_location, password)
VALUES
    ('Tester', 'Tester', 'test@test.com', '+16478785740', '123,123', '123'),
    ('Bobby', 'Lee', 'test2@test.com', '4169999999', '111,111', '123'),
    ('Aubrey', 'Graham', 'test2@test.com', '4169999999', '111,111', '123'),
    ('Jeremy', 'Lin', 'test2@test.com', '4169999999', '111,111', '123'),
    ('Bobby', 'Flay', 'test2@test.com', '4169999999', '111,111', '123');


INSERT INTO categories
    (name, thumbnail_image, description)
VALUES
    ('Japanese', 'http://blogs.discovermagazine.com/crux/files/2013/08/bowl-of-rice.jpg', 'The best Japanese restaurants in Toronto are where to go for food beyond sushi and ramen and dig into favourites like yakitori and donburi. Each of these spots have their own unique little twists, but there’s one thing you can count on all of them to have: sake.' ),
    ('Mexican', 'https://www.goodlifeeats.com/wp-content/uploads/2012/11/FallMexicanRiceBowl2-f.jpg', 'Authentic Mexican food is vibrant, delicious, fresh and fun. It is also colourful, spicy and uses an amazing array of chillies, both fresh and dried.'),
    ('American', 'http://diner22.com/wp-content/uploads/2017/10/breakfast.jpg', 'With roadside diners, vintage drive-ins and out-of-the-way "dives" enjoying a resurgence of hipness among foodies, host Guy Fieri travels across America in search of some of the best "greasy spoon" eateries.'),
    ('Italian', 'https://assets3.thrillist.com/v1/image/1901599/size/tmg-article_default_mobile.jpg', 'The best Italian restaurants in Toronto are known not only for their food, but their atmosphere as well. From pizza, pasta, antipasti, seafood and good wine, these spots have all the favourites.');


INSERT INTO restaurants
    (name, location, address, phone, email, password, category_id, image_url, description)
VALUES
    ('Aji Sai', '123,123', '123 Bay', '+16478785740', 'ajisai@test.com', '123', '1', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'Aji Sai has been offering fine Japanese dining in Ontario for more than 20  years. We offer the freshest food at a reasonable price.'),
    ('Juicy Dumpling', '111,111', '123 Main', '6478888888', '123@test.com', '123', '1', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'Juicy Dumpling is a takeout joint that is revolutionizing the art of quick, cheap, and delicious soup dumplings.'),
    ('Spring Sushi', '123,123', '123 Bay', '6474446584', '1234@test.com', '123', '1', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'At Spring Sushi, we thoroughly prepare basic but essential ingredient to provide you with the true Japanese taste.'),
    ('Dumpling House', '111,111', '123 Main', '6478888888', '123@test.com', '123', '1', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Wakame', '111,111', '123 Main', '6478888888', '123@test.com', '123', '1', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Mucho Burrito', '123,123', '123 Bay', '6474446584', '1234@test.com', '123', '2', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Big Fat Burrito', '111,111', '123 Main', '6478888888', '123@test.com', '123', '2', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Chipotle', '111,111', '123 Main', '6478888888', '123@test.com', '123', '2', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Taco Bell', '123,123', '123 Bay', '6474446584', '1234@test.com', '123', '2', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('McDonalds', '145,145', '123 Lighthouse', '6478988888', 'abc@test.com', '123', '3', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Dennys', '145,145', '123 Lighthouse', '6478988888', 'abc@test.com', '123', '3', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Montanas', '145,145', '123 Lighthouse', '6478988888', 'abc@test.com', '123', '3', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Burger Priest', '145,145', '123 Lighthouse', '6478988888', 'abc@test.com', '123', '3', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('BUONO', '111,111', '123 Main', '6478888888', '123@test.com', '123', '4', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Mattachioni', '123,123', '123 Bay', '6474446584', '1234@test.com', '123', '4', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Little Caesers', '111,111', '123 Main', '6478888888', '123@test.com', '123', '4', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder'),
    ('Figo Toronto', '123,123', '123 Bay', '6474446584', '1234@test.com', '123', '4', 'https://images.pexels.com/photos/2159065/pexels-photo-2159065.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 'placeholder');
;

INSERT INTO orders
    (customer_id, restaurant_id, created_at, pickup_time, order_total )
VALUES
    (1, 1, 1566665736504, 0 , 20000),
    (2, 1, 1566669736504, 1566665936504, 15000),
    (3, 1, 1566669736504, 1566665936504, 150000),
    (4, 1, 1566669736504, 1566665936504, 20000),
    (5, 1, 1566669736504, 1566665936504, 30000),
    (2, 1, 1566669756504, 1566665936504, 4000),
    (1, 1, 1566669666504, 1566665936504, 5000),
    (2, 2, 1566665556504, 1566665736504, 6000);

INSERT INTO items
    (name, price, description, thumb_nail_url, restaurant_id )
VALUES
    ('Friend chicken', 399, 'yummy chicken', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Dumplings', 399, 'Nice dumpliings', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Sushi', 399, 'Okay sushi', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Rice', 200, 'Just Roce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Chilli', 288, 'Fresh Chili', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Hot Sauce', 339, 'Chilli Sauce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Golden Box', 16000, 'Bento box made by Guy Fiere', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Miso Soup', 195, 'Miso hungry', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Wonton Soup', 399, 'Miso hungry', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Tempura Udon', 950, 'Tastes good', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 1),
    ('Chilli', 288, 'Fresh Chili', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 2),
    ('Hot Sauce', 339, 'Chilli Sauce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 3),
    ('friend chicken', 399, 'yummy chicken', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 4),
    ('Dumplings', 399, 'Nice dumpliings', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 5),
    ('Sushi', 399, 'Okay sushi', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 6),
    ('Rice', 200, 'Just Roce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 7),
    ('Chilli', 288, 'Fresh Chili', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 8),
    ('Hot Sauce', 339, 'Chilli Sauce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 9),
    ('friend chicken', 399, 'yummy chicken', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 10),
    ('Dumplings', 399, 'Nice dumpliings', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 11),
    ('Sushi', 399, 'Okay sushi', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 12),
    ('Rice', 200, 'Just Roce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 13),
    ('Chilli', 288, 'Fresh Chili', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 14),
    ('Hot Sauce', 339, 'Chilli Sauce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 15),
    ('Hot Sauce', 339, 'Chilli Sauce', 'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', 16);
INSERT INTO orders_items
    (order_id, item_id, quantity)
VALUES
    (1, 1, 4),
    (1, 2, 5),
    (2, 1, 10),
    (2, 4, 4),
    (3, 5, 4),
    (3, 2, 1),
    (4, 7, 5),
    (5, 8, 3),
    (5, 4, 1),
    (5, 4, 10),
    (6, 1, 99),
    (6, 2, 3),
    (7, 5, 2),
    (1, 1, 4);
INSERT INTO ratings
    (customer_id, restaurant_id, rating)
VALUES
    (1, 1, 4),
    (2, 2, 5),
    (2, 3, 3),
    (3, 4, 4),
    (3, 5, 5),
    (4, 2, 3),
    (5, 3, 2),
    (1, 4, 3),
    (2, 2, 4),
    (2, 4, 4);
