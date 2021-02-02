-- user data
INSERT INTO users (name, email, password)
VALUES ('Spongebob Squarepants', 'bob@squarepants.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Sandy Squirrel', 'sandy@texas.tx', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Mr. Krabbs', 'krabbs@money.bank', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- property data
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Pineapple', 'description', 'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/very_big_1/public/feature/images/who_lives_in_a_pineapple_under_the_sea.jpg?itok=YQ7WD7AB', 'https://filmdaily.co/wp-content/uploads/2020/05/spongebob-lede-1300x867.jpg', 309, 1, 2, 3, 'USA', '1234 Pineapple Drive', 'Bikini Bottom', 'Hawaii', 'P1N4PL', TRUE),
(2, 'Tree Dome', 'description', 'https://static.wikia.nocookie.net/spongebob/images/7/74/Feral_Friends_203.png/revision/latest/scale-to-width-down/700?cb=20171008095158', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSzLWERsB1NRXe7Px4GoXvaZz7R44urFfa9g&usqp=CAU', 439, 2, 4, 9, 'USA', '2345 Tree Lane', 'Bikini Bottom', 'Hawaii', 'S4NDY', TRUE),
(3, 'Anchor Home', 'description', 'https://static.wikia.nocookie.net/spongebob/images/d/d9/The_Check-Up_144.png/revision/latest/scale-to-width-down/700?cb=20170624154538', 'https://static0.srcdn.com/wordpress/wp-content/uploads/2020/04/Spongebob-Mr-Krabs.jpg', 932, 4, 2, 3, 'USA', '3451 Anchor Way', 'Bikini Bottom', 'Hawaii', 'M0N3Y', FALSE);

-- reservation data
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-03-21', '2018-03-28', 3, 1),
('2019-04-21', '2020-05-18', 2, 1),
('2020-10-19', '2020-10-20', 1, 2);

-- property review data
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 3, 1, 5, 'messages'),
(1, 2, 2, 5, 'messages'),
(2, 1, 3, 2, 'messages');