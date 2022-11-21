--Converting data--
SELECT TO_CHAR(NOW(), 'DD/MM/YYYY'); /* 21/11/2022 */

/*
 * For more date conversions, use the link bellow:
 * https://www.postgresql.org/docs/15/functions-formatting.html
 */

--Converting the number to real with 2 digits--
SELECT TO_CHAR(128.3::REAL, '9999D99'); /* 128,30 */