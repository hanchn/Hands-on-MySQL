# 💻【代码示例】
-- 商品表（products）
CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  price DECIMAL(10, 2),
  created_at DATE
);
-- 示例数据
INSERT INTO products (name, price, created_at)
VALUES ('夏季清凉T恤', 129.99, '2024-05-01'),
  ('冬季羽绒服', 399.00, '2024-02-10'),
  ('夏季遮阳帽', 89.00, '2024-05-03'),
  ('春季外套', 199.00, '2024-03-15'),
  ('夏季牛仔裤', 289.50, '2024-05-04');
-- 1. WHERE + BETWEEN + LIKE 组合查询
SELECT *
FROM products
WHERE price BETWEEN 100 AND 300
  AND name LIKE '%夏季%';
-- 2. 查找创建时间在某个范围内的记录
SELECT *
FROM products
WHERE created_at BETWEEN '2024-05-01' AND '2024-05-10';
-- 3. 排除特定状态的记录（假如有 status 字段）
-- SELECT * FROM orders WHERE status != '已取消';