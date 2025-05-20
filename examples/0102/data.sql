-- 商品表示例
CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  sales INT,
  price DECIMAL(10, 2),
  created_at DATE
);
-- 插入示例数据
INSERT INTO products (name, sales, price, created_at)
VALUES ('遮阳帽', 150, 89.00, '2024-05-01'),
  ('防晒T恤', 320, 129.00, '2024-05-02'),
  ('溯溪鞋', 240, 199.00, '2024-05-03'),
  ('速干裤', 50, 169.00, '2024-04-28'),
  ('登山包', 290, 399.00, '2024-05-05');
-- 1. 查询销量最高的前3个商品
SELECT *
FROM products
ORDER BY sales DESC
LIMIT 3;
-- 2. 按价格升序排列，取前5名
SELECT *
FROM products
ORDER BY price ASC
LIMIT 5;
-- 3. 查询最近上架的两个商品
SELECT *
FROM products
ORDER BY created_at DESC
LIMIT 2;
-- 4. 模拟分页：每页两条数据，第二页
SELECT *
FROM products
ORDER BY id ASC
LIMIT 2 OFFSET 2;