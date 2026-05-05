
-- TASK 5: Delivery Agent Performance

-- Q1: Rank agents (per route) by on-time delivery percentage 
SELECT
	*, RANK() OVER(ORDER BY ON_TIME_DELIVERY_PERCENTAGE DESC) AS ON_TIME_DELIVERY_RANK
FROM 
	DELIVERYAGENTS;

-- Q2: Find agents with on-time % < 80%
SELECT
	*
FROM
	DELIVERYAGENTS
WHERE
	ON_TIME_DELIVERY_PERCENTAGE < 80;

-- Q3: Compare average speed of top 5 vs bottom 5 agents using subqueries
(SELECT
	*,
    'TOP5'
FROM
	DELIVERYAGENTS
ORDER BY AVG_SPEED_KMPH DESC
LIMIT 5)
UNION
(SELECT
	*,
    'BOTTOM5'
FROM
	DELIVERYAGENTS
ORDER BY AVG_SPEED_KMPH ASC
LIMIT 5);


