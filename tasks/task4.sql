
-- SQL - написать запросы под любую СУБД

-- 1. Кто из пользователей не посещал ни одной страницы?
-- Ответ:
SELECT u.LOGIN,u.FIO
FROM users_tab u
LEFT JOIN log_tab lt ON u.LOGIN=lt.USER_LOGIN
WHERE lt.ID IS NULL

-- 2. Какие страницы используют департаменты?
-- Ответ:
SELECT d.DEP_NAME, lt.PAGE_NAME
FROM log_tab lt
LEFT JOIN users_tab u ON u.LOGIN=lt.USER_LOGIN
LEFT JOIN department_tab d ON d.DEP_ID=u.DEPARTMENT_ID
GROUP BY d.DEP_NAME,lt.PAGE_NAME

-- 3. Какой департамент активнее всего пользуется страницей account.php
-- Ответ:
SELECT d.DEP_NAME, COUNT(*) AS 'COUNT_VISITS'
FROM log_tab lt
JOIN users_tab u ON u.LOGIN=lt.USER_LOGIN AND lt.PAGE_NAME='account.php'
LEFT JOIN department_tab d ON d.DEP_ID=u.DEPARTMENT_ID
GROUP BY d.DEP_NAME
ORDER BY Count_Visits DESC
LIMIT 1

-- 4. Полный список посещений с количеством за день
-- Ответ:
-- MySQL поддерживает оконные функции начиная с версии 8.0
SELECT *, COUNT(*) OVER (PARTITION BY lt.UDATE,lt.USER_LOGIN) AS 'CNT'
FROM log_tab lt
ORDER BY lt.UDATE


