-- Table structure for table `about_detail`
CREATE TABLE IF NOT EXISTS about_detail (
  about_id SERIAL PRIMARY KEY,
  detail VARCHAR(1000) NOT NULL DEFAULT '',
  display_order INT NOT NULL DEFAULT 0,
  created_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 2 = delete
);

-- Table structure for table `card_detail`
CREATE TABLE IF NOT EXISTS card_detail (
  payment_method_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL DEFAULT 0,
  name VARCHAR(50) NOT NULL DEFAULT '', -- 1 = card, 2 = online
  card_number VARCHAR(40) NOT NULL DEFAULT '',
  card_mm VARCHAR(3) NOT NULL DEFAULT '01',
  card_yyyy VARCHAR(5) NOT NULL DEFAULT '2023',
  card_code VARCHAR(5) NOT NULL DEFAULT '000',
  first_name VARCHAR(50) NOT NULL DEFAULT '',
  last_name VARCHAR(50) NOT NULL DEFAULT '',
  is_remove_any INT NOT NULL DEFAULT 1,
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 2 = delete
);

-- Table structure for table `cart_detail`
CREATE TABLE IF NOT EXISTS cart_detail (
  cart_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL DEFAULT 0,
  restaurant_id INT NOT NULL DEFAULT 0,
  menu_item_id INT NOT NULL DEFAULT 0,
  portion_id VARCHAR(50) NOT NULL DEFAULT '',
  ingredient_id VARCHAR(50) NOT NULL DEFAULT '',
  qty INT NOT NULL DEFAULT 1,
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 2 = delete
);

-- Table structure for table `category_detail`
CREATE TABLE IF NOT EXISTS category_detail (
  category_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL DEFAULT '',
  image VARCHAR(150) NOT NULL DEFAULT '',
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 0 = inactive, 2 = delete
);

-- Table structure for table `favorite_detail`
CREATE TABLE IF NOT EXISTS favorite_detail (
  favorite_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL DEFAULT 0,
  menu_item_id INT NOT NULL DEFAULT 0,
  created_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = Fav, 0 = Unfav
);

-- Table structure for table `inbox_detail`
CREATE TABLE IF NOT EXISTS inbox_detail (
  inbox_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL DEFAULT 0,
  title VARCHAR(100) NOT NULL DEFAULT '',
  detail VARCHAR(1000) NOT NULL DEFAULT '',
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 0 -- 0 = new, 1 = read, 2 delete
);

-- Table structure for table `ingredient_detail`
CREATE TABLE IF NOT EXISTS ingredient_detail (
  ingredient_id SERIAL PRIMARY KEY,
  menu_item_id INT NOT NULL DEFAULT 0,
  name VARCHAR(75) NOT NULL DEFAULT '',
  addition_price VARCHAR(500) NOT NULL DEFAULT '',
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 0 = inactive, 2 = delete
);

-- Table structure for table `menu_detail`
CREATE TABLE IF NOT EXISTS menu_detail (
  menu_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL DEFAULT '',
  image VARCHAR(150) NOT NULL DEFAULT '',
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 0 = inactive, 2 = delete
);

-- Table structure for table `menu_item_detail`
CREATE TABLE IF NOT EXISTS menu_item_detail (
  menu_item_id SERIAL PRIMARY KEY,
  menu_id INT NOT NULL DEFAULT 0,
  restaurant_id INT NOT NULL DEFAULT 0,
  category_id INT NOT NULL DEFAULT 0,
  food_type VARCHAR(100) NOT NULL DEFAULT '',
  name VARCHAR(150) NOT NULL DEFAULT '',
  image VARCHAR(150) NOT NULL DEFAULT '',
  is_portion_allow INT NOT NULL DEFAULT 1, -- 0 = inactive, 1 = active
  is_custom_ingredient_allow INT NOT NULL DEFAULT 1, -- 0 = inactive, 1 = active
  description VARCHAR(2000) NOT NULL DEFAULT '',
  base_price FLOAT NOT NULL DEFAULT 0,
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 0 = inactive, 2 = delete
);

-- Table structure for table `order_detail`
CREATE TABLE IF NOT EXISTS order_detail (
  order_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL DEFAULT 0,
  order_no VARCHAR(15) NOT NULL DEFAULT '',
  total_price FLOAT NOT NULL DEFAULT 0,
  total_quantity INT NOT NULL DEFAULT 0,
  delivery_address VARCHAR(300) NOT NULL DEFAULT '',
  delivery_instruction VARCHAR(300) NOT NULL DEFAULT '',
  payment_method INT NOT NULL DEFAULT 0, -- 1 = card, 2 = online
  payment_status INT NOT NULL DEFAULT 0, -- 0 = unpaid, 1 = paid
  order_status INT NOT NULL DEFAULT 0, -- 0 = pending, 1 = processing, 2 = delivered, 3 = canceled
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 2 = delete
);

-- Table structure for table `portion_detail`
CREATE TABLE IF NOT EXISTS portion_detail (
  portion_id SERIAL PRIMARY KEY,
  menu_item_id INT NOT NULL DEFAULT 0,
  name VARCHAR(75) NOT NULL DEFAULT '',
  addition_price VARCHAR(500) NOT NULL DEFAULT '',
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 0 = inactive, 2 = delete
);

-- Table structure for table `restaurant_detail`
CREATE TABLE IF NOT EXISTS restaurant_detail (
  restaurant_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL DEFAULT '',
  address VARCHAR(300) NOT NULL DEFAULT '',
  phone_number VARCHAR(20) NOT NULL DEFAULT '',
  email VARCHAR(100) NOT NULL DEFAULT '',
  image VARCHAR(150) NOT NULL DEFAULT '',
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 0 = inactive, 2 = delete
);

-- Table structure for table `user_detail`
CREATE TABLE IF NOT EXISTS user_detail (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL DEFAULT '',
  password VARCHAR(100) NOT NULL DEFAULT '',
  email VARCHAR(100) NOT NULL DEFAULT '',
  first_name VARCHAR(50) NOT NULL DEFAULT '',
  last_name VARCHAR(50) NOT NULL DEFAULT '',
  phone_number VARCHAR(20) NOT NULL DEFAULT '',
  create_date TIMESTAMP DEFAULT current_timestamp(),
  update_date TIMESTAMP DEFAULT current_timestamp(),
  status INT NOT NULL DEFAULT 1 -- 1 = active, 0 = inactive, 2 = delete
);
