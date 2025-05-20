-- 商品表
CREATE TABLE products (id INT PRIMARY KEY, name VARCHAR(100));
-- 库存流水表
CREATE TABLE stock_logs (
  id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  change_type VARCHAR(50),
  -- '入库'、'出库'、'盘点'
  quantity_change INT,
  -- 正数为加，负数为减
  stock_after_change INT,
  -- 操作后库存余额
  related_order_id INT,
  -- 可关联订单ID
  operate_time DATETIME
);
-- 示例数据
INSERT INTO products (id, name)
VALUES (1, '登山包'),
  (2, '防晒帽');
INSERT INTO stock_logs (
    product_id,
    change_type,
    quantity_change,
    stock_after_change,
    related_order_id,
    operate_time
  )
VALUES (1, '入库', 100, 100, NULL, '2024-05-01 10:00:00'),
  (1, '出库', -20, 80, 1001, '2024-05-02 09:00:00'),
  (1, '出库', -10, 70, 1002, '2024-05-02 15:00:00'),
  (2, '入库', 50, 50, NULL, '2024-05-01 11:00:00'),
  (2, '出库', -5, 45, 1003, '2024-05-03 10:00:00');
-- 1. 查询某商品的全部库存异动记录
SELECT *
FROM stock_logs
WHERE product_id = 1
ORDER BY operate_time ASC;
-- 2. 查询最近 2 天所有出库记录
SELECT *
FROM stock_logs
WHERE change_type = '出库'
  AND operate_time >= NOW() - INTERVAL 2 DAY;
-- 3. 统计每个商品的出库总量
SELECT product_id,
  SUM(- quantity_change) AS total_out
FROM stock_logs
WHERE change_type = '出库'
GROUP BY product_id;
-- 4. 查询最近一次出库操作及对应订单
SELECT *
FROM stock_logs
WHERE change_type = '出库'
ORDER BY operate_time DESC
LIMIT 1;