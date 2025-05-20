### 🎬 MySQL 2分钟展示实例大全

---

## 🔹模块一：基础高效查询技巧（初级用户必看）

1. [🔍 条件查询速查（WHERE + LIKE + BETWEEN）](./examples/0101/README.md)
2. [🧮 排名与排序（ORDER BY + LIMIT）](./examples/0102/README.md)
3. [🪝 去重 vs 分组（DISTINCT vs GROUP BY）](./examples/0103/README.md)
4. [⛓️ 多表联合实战（INNER JOIN / LEFT JOIN 场景化对比）](./examples/0104/README.md)
5. [📦 查询库存异动明细（适用于电商库存流水）](./examples/0105/README.md)

---

## 🔹模块二：实用数据建模（结构设计+真实业务模拟）

6. [🧱 如何设计"订单-用户-商品"三表关系](./examples/0201/README.md)
7. [🧾 模拟"商品SKU管理"建表 + 唯一索引设计](./examples/0202/README.md)
8. [🧍 "用户签到记录表"设计 + 快速查找本周连续签到天数](./examples/0203/README.md)
9. [🧮 电商"优惠券使用"记录表如何防止重复领取](./examples/0204/README.md)
10. [🏷️ 标签系统设计：多对多映射的高效建模方案](./examples/0205/README.md)

---

## 🔹模块三：常见分析类查询（运营&产品日常用）

11. [📈 用户留存分析（分组 + 日期差）](./examples/0301/README.md)
12. [📊 复购率查询（按用户分组统计多次订单）](./examples/0302/README.md)
13. [🛍️ 查询近30天热销TOP商品（销量 + 最近订单时间）](./examples/0303/README.md)
14. [🗓️ 周同比/月环比销售变化（DATE\_FORMAT + 自连接）](./examples/0304/README.md)
15. [🧭 活跃用户判定（连续访问 vs 累计访问）](./examples/0305/README.md)

---

## 🔹模块四：复杂业务逻辑查询（进阶思维挑战）

16. [🧠 查询每个用户最近一笔订单及金额（窗口函数 vs 子查询）](./examples/0401/README.md)
17. [🧭 查找异常用户行为（同IP多账号、深夜高频订单）](./examples/0402/README.md)
18. [🪙 计算订单利润：销售价 - 成本价 - 营销折扣](./examples/0403/README.md)
19. [🧳 用户旅行偏好分析（GROUP\_CONCAT + 多表关联）](./examples/0404/README.md)
20. [🧵 表格透视：行转列 + 列转行（适用于财务报表）](./examples/0405/README.md)

---

## 🔹模块五：性能优化实战

21. [🧲 使用索引加速查询（EXPLAIN 分析 + WHERE 条件设计）](./examples/0501/README.md)
22. [🗃️ COUNT 慢查优化（聚合索引 vs 临时表缓存）](./examples/0502/README.md)
23. [⏱️ LIMIT 深分页优化（ID偏移 vs 游标分页）](./examples/0503/README.md)
24. [🧹 删除大数据表的正确姿势（分批删除 + 延迟删除）](./examples/0504/README.md)
25. [💾 查询缓存失效的常见误区（SQL语句是否命中）](./examples/0505/README.md)

---

## 🔹模块六：安全控制 & 数据权限

26. [🔐 用户授权与权限控制（GRANT/REVOKE 最小权限原则）](./examples/0601/README.md)
27. [🧯 防止 SQL 注入的结构性查询设计（预处理语句）](./examples/0602/README.md)
28. [🛡️ MySQL 密码策略 & 登录失败限制](./examples/0603/README.md)
29. [📦 数据脱敏展示（手机号、邮箱等敏感字段处理）](./examples/0604/README.md)
30. [🧾 查询日志记录与慢查询开启](./examples/0605/README.md)

---

## 🔹模块七：真实项目场景演练（实战整合）

31. [📦 ERP系统：多仓库库存调拨记录查询](./examples/0701/README.md)
32. [🧾 CRM系统：客户行为轨迹回溯（时间线建模）](./examples/0702/README.md)
33. [🛍️ 电商平台：优惠券领取+核销全流程表设计](./examples/0703/README.md)
34. [🧭 用户画像：兴趣偏好/活跃度/渠道来源三维分析](./examples/0704/README.md)
35. [📊 每日经营看板查询：GMV、订单数、客单价一览](./examples/0705/README.md)

