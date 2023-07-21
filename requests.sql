Задание 1 Выведи список логинов курьеров с количеством их заказов в статусе «В доставке» (поле inDelivery = true). 
SELECT c."login",COUNT(k."id")
FROM "Couriers" AS c 
JOIN "Orders" AS k ON c."id" = k."courierId"
WHERE k."inDelivery" = true and k."cancelled" = false and k."finished" = false
GROUP BY c."login";

-- для вывода всех логинов курьеров с количеством заказов
SELECT c."login",COUNT(k."id")
FROM "Couriers" AS c
LEFT JOIN "Orders" AS k ON c."id" = k."courierId" and k."inDelivery" = true and k."cancelled" = false and k."finished" = false
GROUP BY c."login";

Задание 2
SELECT "track",
	CASE
        WHEN "inDelivery" = true THEN 1
        WHEN "cancelled" = true THEN -1
        WHEN "finished" = true THEN 2
		ELSE 0
    END
FROM "Orders";