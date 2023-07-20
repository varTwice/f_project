Задание 1
SELECT c."login",COUNT(*)
FROM "Couriers" AS c 
LEFT JOIN "Orders" AS k ON c."id" = k."courierId" and k."inDelivery" = true
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