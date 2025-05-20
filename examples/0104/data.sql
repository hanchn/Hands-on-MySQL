-- 用户表
CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(100));
-- 订单表
CREATE TABLE orders (
  id INT PRIMARY KEY,
  user_id INT,
  product_name VARCHAR(100),
  order_date DATE
);
-- 示例数据
INSERT INTO users (id, name)
VALUES (1, '小王'),
  (2, '小李'),
  (3, '小张');
INSERT INTO orders (id, user_id, product_name, order_date)
VALUES (101, 1, '登山包', '2024-05-01'),
  (102, 2, '防晒帽', '2024-05-02'),
  (103, 4, '速干衣', '2024-05-03');
-- 注意：user_id 4 在用户表中不存在
-- 1. INNER JOIN：只返回有用户资料的订单
SELECT orders.id,
  users.name,
  orders.product_name
FROM orders
  INNER JOIN users ON orders.user_id = users.id;
-- 2. LEFT JOIN：保留所有订单，即使用户不存在
SELECT orders.id,
  users.name,
  orders.product_name
FROM orders
  LEFT JOIN users ON orders.user_id = users.id;