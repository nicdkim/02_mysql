-- DML (Data Manipulation Language)alter
-- 테이블에 값을 삽입하거나 수정하거나 삭제하는 SQL의 한 부분이다.
-- inset, update, delete, select (dql - data query language)

-- 값을 등록하거나 수정하는 경우 아래의 내용을 주의해야 한다.
-- 1. 테이터 타입
-- 2. 제약 조건

-- INSERT
-- 새로운 행을 추가하는 구문
-- 테이블의 행의 수가 등가한다.

use menudb;

INSERT INTO tbl_menu (
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
    ) VALUES (
		null,
        "바나나해장국",
        8500,
        4,
        'Y'
	);
    
    SELECT * FROM tbl_menu;
    
    INSERT INTO tbl_menu VALUES(null,"바나나해장국",8500,4,'Y');
    
    -- 컬럼의 순서를 변경하는 경우 순서에 맞게 값을 넣어주면 된다.
    INSERT INTO tbl_menu(orderable_status,menu_price,menu_name,category_code)
    VALUES('Y',5500,"파인애플탕",4);
    
    SELECT * FROM tbl_menu;
    
    -- insert 안에 서브쿼리 사용 가능 (거의 안씀)
    INSERT INTO tbl_menu VALUES(
		NULL,
        "순대국밥",
        8500,
        (SELECT category_code FROM tbl_category WHERE category_name = "한식"),
        'Y'
    );
    
    SELECT * FROM tbl_menu;
    
    -- MULTI INSERT
    INSERT INTO
		tbl_menu
        VALUES
			(null, "참치맛아이스크림",1700,12,'Y'),
            (null, "멸치맛아이스크림",1500,11,'Y'),
            (null, "소시지맛커피",2500,8,'Y');
            
SELECT * FROM tbl_menu;
    
-- UPDATE
-- 테이블에 기록된 컬럼의 값을 수정하는 구문이다.
-- 테이블의 전체 행 갯수는 변화가 없다.
SELECT 
	*
  FROM tbl_menu
WHERE menu_name = "바나나해장국";

UPDATE tbl_menu 
	SET menu_name = "델몬트바나나"
WHERE menu_name = "바나나해장국";

SELECT 
	*
  FROM tbl_menu
WHERE menu_name = "델몬트바나나";