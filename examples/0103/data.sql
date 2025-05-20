-- 用户浏览商品记录表
CREATE TABLE product_views (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  product_id INT,
  view_time DATETIME
);
-- 示例数据
INSERT INTO product_views (user_id, product_id, view_time)
VALUES (1, 101, '2024-05-01 10:00:00'),
  (1, 101, '2024-05-01 11:00:00'),
  (2, 102, '2024-05-02 12:00:00'),
  (2, 101, '2024-05-02 13:00:00'),
  (3, 103, '2024-05-03 14:00:00');
-- 1. 查询有哪些不同的用户访问过商品
SELECT DISTINCT user_id
FROM product_views;
-- 2. 查询每个用户访问了多少次商品
SELECT user_id,
  COUNT(*) AS view_count
FROM product_views
GROUP BY user_id;
-- 3. 查询每个商品被访问了几次
SELECT product_id,
  COUNT(*) AS total_views
FROM product_views
GROUP BY product_id;
-- 4. 查询用户访问了哪些不同的商品组合
SELECT DISTINCT user_id,
  product_id
FROM product_views;