-- DELETE
-- 테이블의 행을 삭제하는 구문이다.
-- 테이블의 행의 갯수가 줄어든다.

UPDATE tbl_menu
	SET category_code = 6,
		menu_name = "맛있는바나나"
WHERE menu_price IN (
	SELECT
		menu_price
        FROM (SELECT * FROM tbl_menu) AS a
        WHERE menu_name = "델몬트바나나"
);

-- WHERE 절을 이용한 단일 행 삭제
DELETE FROM tbl_menu
  WHERE menu_name = "맛있는바나나";
  
  SELECT * FROM tbl_menu;
  
-- Limit를 활용한 행 삭제
DELETE FROM tbl_menu
	ORDER BY menu_code DESC
	LIMIT 2;

SELECT * FROM tbl_menu;
    
-- 테이블의 값을 전체 삭제하는 경우 - 실행하지 않는 것이 좋다.
-- DELETE FROM tbl_menu;

-- 데이터를 중요하게 관리해야 하기 때문에
-- delete query는 잘 사용하지 않으며
-- 삭제를 해야하는 경우 아래와 같이 상태를 업데이트 하는 방식으로 진행한다.
SELECT
	*
	FROM tbl_menu
  WHERE orderable_status = 'Y';
  
UPDATE tbl_menu
	SET orderable_status = 'N'
  WHERE menu_code = 28;

SELECT * FROM tbl_menu;

-- REPLACE
-- 이미 존재하고 있다면 UPDATE, 없으면 INSERT
-- INSERT INTO tbl_menu VALUES(26,"참기름소주",5000,10,'Y');
REPLACE INTO tbl_menu VALUES(26,"참기름소주",5000,10,'Y');

SELECT * FROM tbl_menu;
  
  
  
  
  
  
  
  