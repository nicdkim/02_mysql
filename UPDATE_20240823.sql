-- 서브쿼리 활용
UPDATE tbl_menu
	SET category_code = 6
WHERE menu_price IN (
	SELECT
		menu_price
        FROM (SELECT * FROM tbl_menu) AS a
        WHERE menu_name = "델몬트바나나"
);

-- 여러 컬럼도 한 번에 가능
UPDATE tbl_menu
	SET category_code = 6,
		menu_name = "맛있는바나나"
WHERE menu_price IN (
	SELECT
		menu_price
        FROM (SELECT * FROM tbl_menu) AS a
        WHERE menu_name = "델몬트바나나"
);
