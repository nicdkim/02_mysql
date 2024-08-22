-- ORDER BY
-- SELECT 문과 함께 사용하며, 결과 집합을 특정 열이나 열들의
-- 값에 따라 정렬하는데 사용한다.

SELECT
	menu_code,
    menu_name,
    menu_price
  FROM tbl_menu
ORDER BY 
	-- menu_price ASC;		-- ASC는 오름차순
    menu_price DESC;
    
SELECT 
	menu_code,
    menu_name,
    menu_price
  FROM tbl_menu
ORDER BY
	menu_price DESC,
    menu_name ASC;
    
-- 연산 결과로 결과 집합 정렬
SELECT
	menu_code,
    menu_price,
    menu_name,
    (menu_code * menu_price) AS multi
  FROM
	tbl_menu
ORDER BY
	multi DESC;

