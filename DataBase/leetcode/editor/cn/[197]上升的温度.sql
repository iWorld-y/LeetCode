#
# 
# 表 Weather 
#
# 
#+---------------+---------+
#| Column Name   | Type    |
#+---------------+---------+
#| id            | int     |
#| recordDate    | date    |
#| temperature   | int     |
#+---------------+---------+
#id 是这个表的主键
#该表包含特定日期的温度信息 
#
# 
#
# 编写一个 SQL 查询，来查找与之前（昨天的）日期相比温度更高的所有日期的 id 。 
#
# 返回结果 不要求顺序 。 
#
# 查询结果格式如下例： 
#
# 
#Weather
#+----+------------+-------------+
#| id | recordDate | Temperature |
#+----+------------+-------------+
#| 1  | 2015-01-01 | 10          |
#| 2  | 2015-01-02 | 25          |
#| 3  | 2015-01-03 | 20          |
#| 4  | 2015-01-04 | 30          |
#+----+------------+-------------+
#
#Result table:
#+----+
#| id |
#+----+
#| 2  |
#| 4  |
#+----+
#2015-01-02 的温度比前一天高（10 -> 25）
#2015-01-04 的温度比前一天高（20 -> 30）
# 
# 
# 
# Related Topics 数据库 👍 239 👎 0

#leetcode submit region begin(Prohibit modification and deletion)
# Write your MySQL query statement below
#leetcode submit region end(Prohibit modification and deletion)

# 2021-11-14 20:57:09
SELECT a.id id
FROM Weather a,
     Weather b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1
  AND a.temperature > b.temperature;
# SELECT Weather.id AS 'Id'
# FROM Weather
#          JOIN
#      Weather w ON DATEDIFF(Weather.recordDate, w.recordDate) = 1
#          AND Weather.Temperature > w.Temperature;


