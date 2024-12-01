-- 1
SELECT first_name
FROM restStaff
INNER JOIN restBill
WHERE cust_name = "Tanya Singh"
AND staff_no = waiter_no;

-- 2
SELECT room_date
FROM restRoom_management
INNER JOIN restStaff
WHERE first_name = "Charles" AND room_name = "Green" AND room_date LIKE "1602%";

-- 3
SELECT T1.first_name
FROM restStaff T1
INNER JOIN restStaff T2
ON T1.headwaiter = T2.staff_no
WHERE T1.headwaiter = (
SELECT headwaiter
FROM restStaff
WHERE first_name = "Zoe");

-- 4
SELECT cust_name, bill_total, first_name
FROM restBill
INNER JOIN restStaff
ON waiter_no = staff_no
ORDER BY bill_total DESC;

-- 5
SELECT first_name, surname
FROM restStaff
WHERE staff_no IN(SELECT DISTINCT waiter_no
FROM restBill
WHERE bill_date IN (
SELECT bill_date
FROM restBill
WHERE bill_no IN (00014, 00017))
AND table_no IN(
SELECT DISTINCT table_no
FROM restRest_table R
INNER JOIN (
SELECT room_name
FROM restRest_table T
INNER JOIN restBill B
ON T.table_no = B.table_no
WHERE bill_no IN (00014, 00017)) C
WHERE R.room_name = C.room_name));

-- 6
SELECT first_name, surname
FROM restStaff
WHERE staff_no IN(
SELECT DISTINCT headwaiter
FROM restStaff
WHERE staff_no IN (SELECT waiter_no
FROM restBill
WHERE bill_date = "160312"
AND table_no IN(
SELECT table_no
FROM restRest_table
WHERE room_name = "Blue"))
UNION
SELECT waiter_no
FROM restStaff
INNER JOIN restBill
ON staff_no = waiter_no
WHERE bill_date = "160312"
AND table_no IN(
SELECT table_no
FROM restRest_table
WHERE room_name = "Blue"));