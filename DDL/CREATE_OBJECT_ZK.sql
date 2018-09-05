--Table--------------------------------
CREATE TABLE  "T_INITIAL_ZK" 
   (	"T_INITIAL_ID" NUMBER, 
	"T_INITIAL_VALUE" VARCHAR2(255), 
	"T_CONTENTS" VARCHAR2(255), 
	 CONSTRAINT "T_INITIAL_ZK_PK" PRIMARY KEY ("T_INITIAL_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_INITIAL_ZK_BACKUP" 
   (	"T_INITIAL_ID" NUMBER, 
	"T_INITIAL_VALUE" VARCHAR2(255), 
	"T_CONTENTS" VARCHAR2(255), 
	 CONSTRAINT "T_INITIAL_ZK_BACKUP_PK" PRIMARY KEY ("T_INITIAL_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_IN_OUT_ZK" 
   (	"ID" NUMBER, 
	"T_TIME" TIMESTAMP (6) WITH TIME ZONE, 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_PIC_NAME" VARCHAR2(255), 
	"T_LAST_VALUE" NUMBER, 
	"T_IN_VALUE" NUMBER, 
	"T_OUT_VALUE" NUMBER, 
	"T_NOW_VALUE" NUMBER, 
	"T_AUTOMATIC" NUMBER, 
	"T_MANUAL" NUMBER, 
	"T_COMMENT" VARCHAR2(255), 
	"T_FIELD6" NUMBER, 
	"T_FIELD7" NUMBER, 
	"T_FIELD8" NUMBER, 
	"T_FIELD9" VARCHAR2(255), 
	 CONSTRAINT "T_IN_OUT_ZK_PK" PRIMARY KEY ("ID") DISABLE
   )
/

CREATE TABLE  "T_IN_OUT_ZK_BACKUP" 
   (	"ID" NUMBER, 
	"T_TIME" TIMESTAMP (6) WITH TIME ZONE, 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_PIC_NAME" VARCHAR2(255), 
	"T_LAST_VALUE" NUMBER, 
	"T_IN_VALUE" NUMBER, 
	"T_OUT_VALUE" NUMBER, 
	"T_NOW_VALUE" NUMBER, 
	"T_AUTOMATIC" NUMBER, 
	"T_MANUAL" NUMBER, 
	"T_COMMENT" VARCHAR2(255), 
	"T_FIELD6" NUMBER, 
	"T_FIELD7" NUMBER, 
	"T_FIELD8" NUMBER, 
	"T_FIELD9" VARCHAR2(255), 
	 CONSTRAINT "T_IN_OUT_ZK_BACKUP_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_LOCATION_MASTER_ZK" 
   (	"T_LOCATION_ID" VARCHAR2(30), 
	"T_LOCATION_NAME" VARCHAR2(30), 
	 CONSTRAINT "T_LOCATION_MASTER_PK" PRIMARY KEY ("T_LOCATION_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_LOCATION_MASTER_ZK_BACKUP" 
   (	"T_LOCATION_ID" VARCHAR2(30), 
	"T_LOCATION_NAME" VARCHAR2(30), 
	 CONSTRAINT "T_LOCATION_ZK_BACKUP_MASTER_PK" PRIMARY KEY ("T_LOCATION_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_NOT_ENTRY_ZK" 
   (	"ID" NUMBER, 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_FIELD6" NUMBER, 
	"T_FIELD7" NUMBER, 
	"T_FIELD8" NUMBER, 
	"T_FIELD9" VARCHAR2(255), 
	"T_PIC" VARCHAR2(255), 
	"T_MODE" VARCHAR2(255), 
	"T_PLACE" VARCHAR2(255), 
	"T_TIME" TIMESTAMP (6) WITH TIME ZONE, 
	"LATEST_INVENTORY_DATA" NUMBER, 
	 CONSTRAINT "T_NOT_ENTRY_ZK_PK" PRIMARY KEY ("ID") DISABLE
   )
/
CREATE TABLE  "T_PIC_MASTER_ZK" 
   (	"T_PIC" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PIC_NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PASSWORD" VARCHAR2(255), 
	 CONSTRAINT "T_PIC_MASTER_ZK_PK" PRIMARY KEY ("T_PIC")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_PIC_MASTER_ZK_BACKUP" 
   (	"T_PIC" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PIC_NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"T_PASSWORD" VARCHAR2(255), 
	 CONSTRAINT "T_PIC_MASTER_ZK_BACKUP_PK" PRIMARY KEY ("T_PIC")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_PRODUCTS_ZK" 
   (	"ID" NUMBER, 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_FIELD6" NUMBER, 
	"T_FIELD7" NUMBER, 
	"T_FIELD8" NUMBER, 
	"T_FIELD9" VARCHAR2(255), 
	"LATEST_INVENTORY_DATA" NUMBER, 
	 CONSTRAINT "T_PRODUCTS_ZK_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_PRODUCTS_ZK_BACKUP" 
   (	"ID" NUMBER, 
	"T_LOCATION_ID" VARCHAR2(255), 
	"T_LOCATION_NAME" VARCHAR2(255), 
	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_FIELD6" NUMBER, 
	"T_FIELD7" NUMBER, 
	"T_FIELD8" NUMBER, 
	"T_FIELD9" VARCHAR2(255), 
	"LATEST_INVENTORY_DATA" NUMBER, 
	 CONSTRAINT "T_PRODUCTS_ZK_BACKUP_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "T_PRODUCT_MASTER_ZK" 
   (	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_FIELD7" NUMBER, 
	"T_FIELD8" NUMBER, 
	"T_FIELD9" VARCHAR2(255)
   )
/
CREATE TABLE  "T_PRODUCT_MASTER_ZK_BACKUP" 
   (	"T_FIELD1" VARCHAR2(255), 
	"T_FIELD2" VARCHAR2(255), 
	"T_FIELD3" VARCHAR2(255), 
	"T_FIELD4" VARCHAR2(255), 
	"T_FIELD5" VARCHAR2(255), 
	"T_FIELD7" NUMBER, 
	"T_FIELD8" NUMBER, 
	"T_FIELD9" VARCHAR2(255)
   )
/

--SEQUENCE-------------------------------------------
 CREATE SEQUENCE   "T_IN_OUT_ZK_BACKUP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_IN_OUT_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000000 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_NOT_ENTRY_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000000 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PIC_MASTER_ZK_BACKUP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PIC_MASTER_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PRODUCTS_ZK_BACKUP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PRODUCTS_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000000 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/

--PACKAGE-------------------------------------------
----H-----------------------------------------
create or replace PACKAGE  "PKG_ZK_APP" as 
 
    --ログイン認証 
    function FUNCTION_CUSTOM_AUTH ( 
    p_username in varchar2, 
    p_password in varchar2 ) 
    return boolean; 
 
    --在庫修正 
    procedure fnc_InsertManualEditHistory 
    ( 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2, 
        strHinban        IN VARCHAR2, 
        strSuryoOld      IN NUMBER, 
        strSuryo         IN NUMBER 
    ); 
 
    --未登録リスト削除
    procedure fnc_DeleteNotEntryList; 

    --棚卸開始ボタン 
    procedure fnc_StartInventory; 
 
    --棚卸終了ボタン 
    procedure fnc_StopInventory; 
 
    --棚卸実績反映ボタン 
    procedure fnc_UpdateInventory2Stock; 
     
    --棚卸の開始/終了を確認 
    function fnc_IsInventoryOpen return boolean; 
 
end PKG_ZK_APP;
/
----D-----------------------------------------
create or replace PACKAGE BODY  "PKG_ZK_APP" is 
 
    --ログイン認証 
	function FUNCTION_CUSTOM_AUTH ( 
	    p_username in varchar2, 
	    p_password in varchar2 ) 
	    return boolean 
 
	as 
 
	    l_user    T_PIC_MASTER_ZK.T_PIC%type := upper(p_username); 
	    l_secret  T_PIC_MASTER_ZK.T_PASSWORD%type; 
	    l_cred    T_PIC_MASTER_ZK.T_PASSWORD%type; 
 
	begin 
	    select 
	    	T_PIC,  
	    	T_PASSWORD  
	    into 
	    	l_user, 
	    	l_secret 
	    from 
	    	T_PIC_MASTER_ZK 
	    where 
	    	upper(T_PIC) = p_username; 
 
	    l_cred := utl_raw.cast_to_raw(p_password); 
 
	    if l_secret = l_cred then  
	      return true; 
	    end if; 
 
	    return false; 
 
	exception 
 
	    when NO_DATA_FOUND then 
	      return false; 
 
	end FUNCTION_CUSTOM_AUTH; 
 
 
    ---在庫修正 
    procedure fnc_InsertManualEditHistory 
    ( 
        strPic           VARCHAR2, 
        strLocationId    VARCHAR2, 
        strHinban        VARCHAR2, 
        strSuryoOld      NUMBER, 
        strSuryo         NUMBER 
    ) 
    AS 
        --変数宣言 
        strPicName    T_PIC_MASTER_ZK.T_PIC_NAME%TYPE; 
 
        strLocationName    T_LOCATION_MASTER_ZK.T_LOCATION_NAME%TYPE; 
 
        strField2     T_PRODUCT_MASTER_ZK.T_FIELD2%TYPE; 
        strField3     T_PRODUCT_MASTER_ZK.T_FIELD3%TYPE; 
        strField4     T_PRODUCT_MASTER_ZK.T_FIELD4%TYPE; 
        strField5     T_PRODUCT_MASTER_ZK.T_FIELD5%TYPE; 
         
        strField6     T_PRODUCTS_ZK.T_FIELD6%TYPE; 
 
        BEGIN 
 
            --↓ 担当者名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_PIC_NAME 
                    INTO strPicName 
                FROM 
                    T_PIC_MASTER_ZK 
                WHERE 
                    T_PIC = strPic; 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strPicName := ''; 
            END; 
            --↑ 担当者名を取得しておく -------------------------------------------------------------------- 
 
 
            --↓ 棚名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_LOCATION_NAME 
                    INTO strLocationName 
                FROM 
                    T_LOCATION_MASTER_ZK 
                WHERE 
                    T_LOCATION_ID = strLocationId; 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strLocationName := ''; 
            END; 
            --↑ 棚名を取得しておく -------------------------------------------------------------------- 
 
 
            --↓ 品名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5 
                    INTO 
                    strField2, 
                    strField3, 
                    strField4, 
                    strField5 
                FROM 
                    T_PRODUCT_MASTER_ZK 
                WHERE 
                    T_FIELD1 = strHinban 
                    and rownum = 1; 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strField2 := ''; 
                    strField3 := ''; 
                    strField4 := ''; 
                    strField5 := ''; 
            END; 
            --↑ 品名を取得しておく -------------------------------------------------------------------- 
 
 
            --履歴レコード追加 
            INSERT INTO 
                T_IN_OUT_ZK 
                ( 
                    T_TIME, 
                    T_PIC, 
                    T_PIC_NAME, 
                    T_LOCATION_ID, 
                    T_LOCATION_NAME, 
                    T_FIELD1, 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5, 
                    T_FIELD6, 
                    T_FIELD7, 
                    T_FIELD8, 
                    T_FIELD9, 
                    T_LAST_VALUE, 
                    T_NOW_VALUE, 
                    T_MANUAL 
                ) 
            SELECT 
                    systimestamp at time zone 'Asia/Tokyo', 
                    strPic, 
                    strPicName, 
                    strLocationId, 
                    strLocationName, 
                    strHinban, 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5, 
                    strSuryo, 
                    T_FIELD7, 
                    T_FIELD8, 
                    T_FIELD9, 
                    strSuryoOld, 
                    strSuryo, 
                    strSuryo - strSuryoOld 
            FROM 
                T_PRODUCT_MASTER_ZK 
            WHERE 
                T_FIELD1 = strHinban 
                and rownum = 1; 
     
    END fnc_InsertManualEditHistory; 
 
    --未登録リスト削除
    procedure fnc_DeleteNotEntryList 
    is  
    BEGIN 
 
        --未登録リスト削除
        DELETE
        FROM
            T_NOT_ENTRY_ZK;
 
    end fnc_DeleteNotEntryList; 

    --棚卸開始ボタン 
    procedure fnc_StartInventory 
    is  
    BEGIN 
 
        --前回実績数クリア 
        UPDATE 
            T_PRODUCTS_ZK 
        SET 
            LATEST_INVENTORY_DATA = 0; 
         
        --棚卸開始フラグ更新 
        UPDATE 
            T_INITIAL_ZK 
        SET 
            T_INITIAL_VALUE = 1 
        WHERE 
            T_INITIAL_ID = 26; 
 
    end fnc_StartInventory; 
 
    --棚卸終了ボタン 
    procedure fnc_StopInventory 
    is  
    BEGIN 
         
        --棚卸開始フラグ更新 
        UPDATE 
            T_INITIAL_ZK 
        SET 
            T_INITIAL_VALUE = 0 
        WHERE 
            T_INITIAL_ID = 26; 
         
    end fnc_StopInventory; 
 
 
    --棚卸実績反映ボタン 
    procedure fnc_UpdateInventory2Stock 
    is  
    begin 
         
        --実績数更新 
        UPDATE 
            T_PRODUCTS_ZK 
        SET 
            T_FIELD6 = LATEST_INVENTORY_DATA; 
 
    end fnc_UpdateInventory2Stock; 
     
    --棚卸ステータスの確認 
    function fnc_IsInventoryOpen return boolean 
    is 
      l_inv_status t_initial_zk.t_initial_value%type; 
    begin 
      select t_initial_value into l_inv_status 
      from t_initial_zk where t_initial_id = 26; 
      if l_inv_status = 1 then 
        return true; 
      end if; 
      return false; 
    exception 
      when no_data_found then 
        return false; 
    end fnc_IsInventoryOpen; 
 
end PKG_ZK_APP;
/
----H-----------------------------------------
create or replace PACKAGE  "PKG_ZK_DELETE_OLD_DATA" IS 
 
    --過去データ削除 
    procedure fnc_DeleteOldData; 
 
    --過去データ削除JOB作成 
    procedure fnc_JobCreate; 
 
    --過去データ削除JOB削除 
    procedure fnc_JobDelete; 
     
    --過去データ削除JOB有効化 
    procedure fnc_JobEnabled; 
 
    --過去データ削除JOB無効化 
    procedure fnc_JobDisabled; 
 
END PKG_ZK_DELETE_OLD_DATA; 
 
--登録済みのJOB一覧は下記のSQLで取得する 
--SELECT * FROM USER_SCHEDULER_JOBS;
/
----D-----------------------------------------
create or replace PACKAGE BODY  "PKG_ZK_DELETE_OLD_DATA" IS 
 
    --過去データ削除 
    procedure fnc_DeleteOldData IS 
    BEGIN 
     
        --T_IN_OUT_ZK削除 
        DELETE 
        FROM 
            T_IN_OUT_ZK 
        WHERE 
            TO_DATE(SYSDATE, 'yyyy/mm/dd hh24:mi:ss') > TO_DATE(ADD_MONTHS(T_TIME, 12), 'yyyy/mm/dd hh24:mi:ss');  
 
        COMMIT; 
 
    END fnc_DeleteOldData; 
 
 
    --過去データ削除JOB作成 
    procedure fnc_JobCreate IS 
    BEGIN 
        DBMS_SCHEDULER.CREATE_JOB( 
            job_name => 'JOB_ZK_DELETE_OLD_DATA',  
            job_type => 'STORED_PROCEDURE',  
            job_action => 'PKG_ZK_DELETE_OLD_DATA.fnc_DeleteOldData',  
            start_date => TO_TIMESTAMP_TZ(CONCAT(TO_CHAR(CURRENT_DATE, 'yyyy/MM/dd'), ' 00:00:00 +09:00'),'yyyy/mm/dd hh24:mi:ss TZH:TZM'),
            repeat_interval => 'FREQ=DAILY;',  
            auto_drop => FALSE, enabled => TRUE); 
    END fnc_JobCreate; 
   
 
    --過去データ削除JOB削除 
    procedure fnc_JobDelete IS 
    BEGIN 
        DBMS_SCHEDULER.DROP_JOB('JOB_ZK_DELETE_OLD_DATA'); 
    END fnc_JobDelete; 
 
 
    --過去データ削除JOB有効化 
    procedure fnc_JobEnabled IS 
    BEGIN 
        DBMS_SCHEDULER.ENABLE('JOB_ZK_DELETE_OLD_DATA'); 
    END fnc_JobEnabled; 
 
 
    --過去データ削除JOB無効化 
    procedure fnc_JobDisabled IS 
    BEGIN 
        DBMS_SCHEDULER.DISABLE('JOB_ZK_DELETE_OLD_DATA'); 
    END fnc_JobDisabled; 
 
END PKG_ZK_DELETE_OLD_DATA;
/
----H-----------------------------------------
create or replace PACKAGE  "PKG_ZK_DRS" as 
 
    --確定 
    procedure fnc_DCMPCMP 
    ( 
        strMode          IN NUMBER, 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2, 
        strHinban        IN VARCHAR2, 
        strSuryo         IN VARCHAR2,
        dtTime           IN TIMESTAMP WITH TIME ZONE DEFAULT systimestamp at time zone 'Asia/Tokyo'
    ); 
 
 
    --棚卸確定 
    procedure fnc_TCMPCMP 
    ( 
        strMode          IN NUMBER, 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2, 
        strHinban        IN VARCHAR2, 
        strSuryo         IN VARCHAR2,
        dtTime           IN TIMESTAMP WITH TIME ZONE DEFAULT systimestamp at time zone 'Asia/Tokyo'
    ); 
 
 
    --確定(ファイル書き込み) 
    procedure fnc_FCMPCMP 
    ( 
        ja               IN JSON_ARRAY_T 
    ); 
 
end;
/
----D-----------------------------------------
create or replace PACKAGE BODY  "PKG_ZK_DRS" IS 
 
    --確定 
    procedure fnc_DCMPCMP 
    ( 
        strMode          NUMBER, 
        strPic           VARCHAR2, 
        strLocationId    VARCHAR2, 
        strHinban        VARCHAR2, 
        strSuryo         VARCHAR2,
        dtTime           TIMESTAMP WITH TIME ZONE
    ) 
    AS 
        --変数宣言 
        RECORDCOUNT   NUMBER; 
        InOut_Value   NUMBER; 
        LastInventory NUMBER; 
 
        strPicName    T_PIC_MASTER_ZK.T_PIC_NAME%TYPE; 
 
        strLocationName    T_LOCATION_MASTER_ZK.T_LOCATION_NAME%TYPE; 
 
        strField2     T_PRODUCT_MASTER_ZK.T_FIELD2%TYPE; 
        strField3     T_PRODUCT_MASTER_ZK.T_FIELD3%TYPE; 
        strField4     T_PRODUCT_MASTER_ZK.T_FIELD4%TYPE; 
        strField5     T_PRODUCT_MASTER_ZK.T_FIELD5%TYPE; 
         
        strField6     T_PRODUCTS_ZK.T_FIELD6%TYPE; 
        
        BEGIN 
 
            --debug
            --DELETE FROM T_DEBUG;

             --debug
            --INSERT INTO T_DEBUG (T_MESSAGE) VALUES('fnc_DCMPCMP');
            --commit;
                
            --↓ 担当者名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_PIC_NAME 
                    INTO strPicName 
                FROM 
                    T_PIC_MASTER_ZK 
                WHERE 
                    T_PIC = strPic 
                    OR upper(T_PIC) = strPic; 
                    --手動入力からの入力を想定して、大文字でも検索しておく 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strPicName := ''; 
            END; 
            --↑ 担当者名を取得しておく -------------------------------------------------------------------- 
 
 
            --↓ 棚名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_LOCATION_NAME 
                    INTO strLocationName 
                FROM 
                    T_LOCATION_MASTER_ZK 
                WHERE 
                    T_LOCATION_ID = strLocationId; 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strLocationName := ''; 
                    
                    --未登録リスト追加 
                    INSERT INTO 
                        T_NOT_ENTRY_ZK 
                        ( 
                            T_TIME,
                            T_MODE,
                            T_PIC,
                            T_LOCATION_ID, 
                            T_FIELD1, 
                            T_FIELD6 
                        ) 
                        VALUES
                        (
                            dtTime, 
                            strMode,
                            strPic, 
                            strLocationId, 
                            strHinban, 
                            strSuryo 
                        );
                        
                    --処理を抜ける
                    return;
            END; 
            --↑ 棚名を取得しておく -------------------------------------------------------------------- 
 
 
            --↓ 品名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5 
                    INTO 
                    strField2, 
                    strField3, 
                    strField4, 
                    strField5 
                FROM 
                    T_PRODUCT_MASTER_ZK 
                WHERE 
                    T_FIELD1 = strHinban 
                    and rownum = 1; 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strField2 := ''; 
                    strField3 := ''; 
                    strField4 := ''; 
                    strField5 := ''; 
                    
                    --未登録リスト追加 
                    INSERT INTO 
                        T_NOT_ENTRY_ZK 
                        ( 
                            T_TIME,
                            T_MODE,
                            T_PIC,
                            T_LOCATION_ID, 
                            T_FIELD1, 
                            T_FIELD6 
                        ) 
                        VALUES
                        (
                            dtTime, 
                            strMode,
                            strPic, 
                            strLocationId, 
                            strHinban, 
                            strSuryo 
                        );
                        
                    --処理を抜ける
                    return;
            END; 
            --↑ 品名を取得しておく -------------------------------------------------------------------- 
 

            --↓ 在庫を更新する -------------------------------------------------------------------- 
            BEGIN 
 
                --現在庫数を取得する 
                BEGIN 
                 
                    SELECT 
                        T_FIELD6 
                        INTO 
                        strField6 
                    FROM 
                        T_PRODUCTS_ZK 
                    WHERE 
                        T_LOCATION_ID = strLocationId 
                        and T_FIELD1 = strHinban 
                        and rownum = 1; 
 
                    EXCEPTION 
                        WHEN NO_DATA_FOUND THEN 
                            strField6 := NULL; 
                END; 
                IF strField6 IS NOT NULL THEN 
                    LastInventory := strField6; 
                ELSE 
                    LastInventory := 0; 
                END IF; 
                
                --入庫数 
                IF strMode = 1 THEN 
                    InOut_Value := TO_NUMBER(strSuryo); 
                --出庫数 
                ELSIF strMode = 2 THEN 
                    InOut_Value := 0 - TO_NUMBER(strSuryo); 
                ELSE 
                    InOut_Value := 0; 
                END IF; 
                 
                --在庫テーブル更新 
                IF strField6 IS NOT NULL THEN 
 
                    --在庫数更新 
                    UPDATE 
                        T_PRODUCTS_ZK 
                    SET 
                        T_FIELD6 = (LastInventory + InOut_Value) 
                    WHERE 
                        T_LOCATION_ID = strLocationId 
                        and T_FIELD1 = strHinban 
                        and rownum = 1; 

                    ELSE 
 
                    --在庫レコード追加 
                    INSERT INTO 
                        T_PRODUCTS_ZK 
                        ( 
                            T_LOCATION_ID, 
                            T_LOCATION_NAME, 
                            T_FIELD1, 
                            T_FIELD2, 
                            T_FIELD3, 
                            T_FIELD4, 
                            T_FIELD5, 
                            T_FIELD6, 
                            T_FIELD7, 
                            T_FIELD8, 
                            T_FIELD9 
                        ) 
                        SELECT 
                            strLocationId, 
                            strLocationName, 
                            strHinban, 
                            T_FIELD2, 
                            T_FIELD3, 
                            T_FIELD4, 
                            T_FIELD5, 
                            strSuryo, 
                            T_FIELD7, 
                            T_FIELD8, 
                            T_FIELD9 
                        FROM 
                            T_PRODUCT_MASTER_ZK 
                        WHERE 
                            T_FIELD1 = strHinban 
                            and rownum = 1; 
                 
                END IF; 
                 
            END; 
 
 
            --履歴レコード追加 
            INSERT INTO 
                T_IN_OUT_ZK 
                ( 
                    T_TIME, 
                    T_PIC, 
                    T_PIC_NAME, 
                    T_LOCATION_ID, 
                    T_LOCATION_NAME, 
                    T_FIELD1, 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5, 
                    T_FIELD6, 
                    T_FIELD7, 
                    T_FIELD8, 
                    T_FIELD9, 
                    T_LAST_VALUE, 
                    T_NOW_VALUE, 
                    T_IN_VALUE, 
                    T_OUT_VALUE 
                ) 
            SELECT 
                    dtTime, 
                    strPic, 
                    strPicName, 
                    strLocationId, 
                    strLocationName, 
                    strHinban, 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5, 
                    LastInventory + InOut_Value, 
                    T_FIELD7, 
                    T_FIELD8, 
                    T_FIELD9, 
                    LastInventory, 
                    LastInventory + InOut_Value, 
                    CASE WHEN strMode = 1 THEN InOut_Value ELSE NULL END, 
                    CASE WHEN strMode = 2 THEN InOut_Value * (-1) ELSE NULL END 
            FROM 
                T_PRODUCT_MASTER_ZK 
            WHERE 
                T_FIELD1 = strHinban 
                and rownum = 1; 
             
        END fnc_DCMPCMP; 
         
         
    --棚卸確定 
    procedure fnc_TCMPCMP 
    ( 
        strMode          NUMBER, 
        strPic           VARCHAR2, 
        strLocationId    VARCHAR2, 
        strHinban        VARCHAR2, 
        strSuryo         VARCHAR2,
        dtTime           TIMESTAMP WITH TIME ZONE
    ) 
    AS 
        --変数宣言 
        RECORDCOUNT   NUMBER; 
        InOut_Value   NUMBER; 
        LastInventory NUMBER; 
 
        strPicName    T_PIC_MASTER_ZK.T_PIC_NAME%TYPE; 
 
        strLocationName    T_LOCATION_MASTER_ZK.T_LOCATION_NAME%TYPE; 
 
        strField2     T_PRODUCT_MASTER_ZK.T_FIELD2%TYPE; 
        strField3     T_PRODUCT_MASTER_ZK.T_FIELD3%TYPE; 
        strField4     T_PRODUCT_MASTER_ZK.T_FIELD4%TYPE; 
        strField5     T_PRODUCT_MASTER_ZK.T_FIELD5%TYPE; 
         
        strLatestInventory     T_PRODUCTS_ZK.LATEST_INVENTORY_DATA%TYPE; 
 
        BEGIN 
 
            --↓ 担当者名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_PIC_NAME 
                    INTO strPicName 
                FROM 
                    T_PIC_MASTER_ZK 
                WHERE 
                    T_PIC = strPic 
                    OR upper(T_PIC) = strPic; 
                    --手動入力からの入力を想定して、大文字でも検索しておく 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strPicName := ''; 
            END; 
            --↑ 担当者名を取得しておく -------------------------------------------------------------------- 
 
 
            --↓ 棚名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_LOCATION_NAME 
                    INTO strLocationName 
                FROM 
                    T_LOCATION_MASTER_ZK 
                WHERE 
                    T_LOCATION_ID = strLocationId; 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strLocationName := ''; 
                    
                    --未登録リスト追加 
                    INSERT INTO 
                        T_NOT_ENTRY_ZK 
                        ( 
                            T_TIME,
                            T_MODE,
                            T_PIC,
                            T_LOCATION_ID, 
                            T_FIELD1, 
                            T_FIELD6 
                        ) 
                        VALUES
                        (
                            dtTime, 
                            strMode,
                            strPic, 
                            strLocationId, 
                            strHinban, 
                            strSuryo 
                        );
                        
                    --処理を抜ける
                    return;
            END; 
            --↑ 棚名を取得しておく -------------------------------------------------------------------- 
 
 
            --↓ 品名を取得しておく -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_FIELD2, 
                    T_FIELD3, 
                    T_FIELD4, 
                    T_FIELD5 
                    INTO 
                    strField2, 
                    strField3, 
                    strField4, 
                    strField5 
                FROM 
                    T_PRODUCT_MASTER_ZK 
                WHERE 
                    T_FIELD1 = strHinban 
                    and rownum = 1; 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strField2 := ''; 
                    strField3 := ''; 
                    strField4 := ''; 
                    strField5 := ''; 
                    
                    --未登録リスト追加 
                    INSERT INTO 
                        T_NOT_ENTRY_ZK 
                        ( 
                            T_TIME,
                            T_MODE,
                            T_PIC,
                            T_LOCATION_ID, 
                            T_FIELD1, 
                            T_FIELD6 
                        ) 
                        VALUES
                        (
                            dtTime, 
                            strMode,
                            strPic, 
                            strLocationId, 
                            strHinban, 
                            strSuryo 
                        );
                        
                    --処理を抜ける
                    return;
            END; 
            --↑ 品名を取得しておく -------------------------------------------------------------------- 
 
 
            --↓ 実棚数を更新する -------------------------------------------------------------------- 
            BEGIN 
 
                --現在庫数を取得する 
                BEGIN 
                 
                    SELECT 
                        LATEST_INVENTORY_DATA 
                        INTO 
                        strLatestInventory 
                    FROM 
                        T_PRODUCTS_ZK 
                    WHERE 
                        T_LOCATION_ID = strLocationId 
                        and T_FIELD1 = strHinban 
                        and rownum = 1; 
 
                    EXCEPTION 
                        WHEN NO_DATA_FOUND THEN 
                            strLatestInventory := NULL; 
                END; 
                IF strLatestInventory IS NOT NULL THEN 
                    LastInventory := strLatestInventory; 
                ELSE 
                    LastInventory := 0; 
                END IF; 
                 
                --実棚数 
                InOut_Value := TO_NUMBER(strSuryo); 
 
                --実棚数テーブル更新 
                IF strLatestInventory IS NOT NULL THEN 
 
                    --実棚数更新 
                    UPDATE 
                        T_PRODUCTS_ZK 
                    SET 
                        LATEST_INVENTORY_DATA = (LastInventory + InOut_Value) 
                    WHERE 
                        T_LOCATION_ID = strLocationId 
                        and T_FIELD1 = strHinban 
                        and rownum = 1; 
 
                ELSE 
 
                    --在庫レコード追加 
                    INSERT INTO 
                        T_PRODUCTS_ZK 
                        ( 
                            T_LOCATION_ID, 
                            T_LOCATION_NAME, 
                            T_FIELD1, 
                            T_FIELD2, 
                            T_FIELD3, 
                            T_FIELD4, 
                            T_FIELD5, 
                            T_FIELD6, 
                            T_FIELD7, 
                            T_FIELD8, 
                            T_FIELD9, 
                            LATEST_INVENTORY_DATA 
                        ) 
                        SELECT 
                            strLocationId, 
                            strLocationName, 
                            strHinban, 
                            T_FIELD2, 
                            T_FIELD3, 
                            T_FIELD4, 
                            T_FIELD5, 
                            0, 
                            T_FIELD7, 
                            T_FIELD8, 
                            T_FIELD9, 
                            InOut_Value 
                        FROM 
                            T_PRODUCT_MASTER_ZK 
                        WHERE 
                            T_FIELD1 = strHinban 
                            and rownum = 1; 
                 
                END IF; 
 
            END; 
 
        END fnc_TCMPCMP;  
         
 
    --確定(ファイル書き込み) 
    procedure fnc_FCMPCMP 
    ( 
        ja          JSON_ARRAY_T 
    ) 
    AS 
        --変数宣言 
        je JSON_ELEMENT_T; 
        jo JSON_OBJECT_T; 
 
        strRecord VARCHAR2(4000); 
        strTime VARCHAR2(50); 
        strBTID VARCHAR2(10); 
        strMode VARCHAR2(10); 
        strPic VARCHAR2(255); 
        strLocationId VARCHAR2(255); 
        strField1 VARCHAR2(4000); 
        strSuryo VARCHAR2(255); 
 
    BEGIN 
        --debug
        DELETE FROM T_DEBUG;
        commit;

        --配列分の処理をする 
        for i in 0..ja.get_size - 1 
        loop 
 
            --JSONの配列から１行ずつ取り出す 
            je := ja.get(i); 
            if (je.is_object) then 
 
                --JSONオブジェクトに変換 
                jo := treat(je as json_object_t); 
 
                --オブジェクトを取得 
                strRecord := jo.get('record').to_string; 
                strRecord := REPLACE(strRecord, '"', '');    --先頭と末尾のダブルクォーテーション対策 
                strTime := strtoken(strRecord, ',', 1); 
                strBTID := strtoken(strRecord, ',', 2); 
                strMode := strtoken(strRecord, ',', 3); 
                strPic := strtoken(strRecord, ',', 4); 
                strLocationId := strtoken(strRecord, ',', 5); 
                strField1 := strtoken(strRecord, ',', 6); 
                strSuryo := strtoken(strRecord, ',', 7); 
                
                --書き込み
                IF strMode != '3' THEN
                    --入庫/出庫
                    PKG_ZK_DRS.fnc_DCMPCMP(TO_NUMBER(strMode), strPic, strLocationId, strField1, strSuryo, TO_TIMESTAMP_TZ(CONCAT(strTime, ' +09:00'), 'YYYY-MM-DD HH24:MI:SS TZH:TZM')); 
                ELSE
                    --棚卸
                    PKG_ZK_DRS.fnc_TCMPCMP(TO_NUMBER(strMode), strPic, strLocationId, strField1, strSuryo, TO_TIMESTAMP_TZ(CONCAT(strTime, ' +09:00'), 'YYYY-MM-DD HH24:MI:SS TZH:TZM')); 
                END IF;

            end if; 
 
        end loop; 

    END fnc_FCMPCMP;  
 
END PKG_ZK_DRS;
/
----H-----------------------------------------
create or replace PACKAGE  "PKG_ZK_RESET_DEMO_DATA" IS 
 
    --デモデータリセット
    procedure fnc_ResetDemoData; 
 
    --デモデータリセットJOB作成 
    procedure fnc_JobCreate; 
 
    --デモデータリセットJOB削除 
    procedure fnc_JobDelete; 
     
    --デモデータリセットJOB有効化 
    procedure fnc_JobEnabled; 
 
    --デモデータリセットJOB無効化 
    procedure fnc_JobDisabled; 
 
END PKG_ZK_RESET_DEMO_DATA;
 
--登録済みのJOB一覧は下記のSQLで取得する 
--SELECT * FROM USER_SCHEDULER_JOBS; 
/
----D-----------------------------------------
create or replace PACKAGE BODY  "PKG_ZK_RESET_DEMO_DATA" IS 
 
    --デモデータリセット 
    procedure fnc_ResetDemoData
    IS
   
        --変数宣言 
        RECORDCOUNT   NUMBER; 
        dtLatestDate   T_IN_OUT_ZK.T_TIME%TYPE; 
        DateCount   NUMBER; 
    
    BEGIN
    
        --debug
        DELETE FROM T_DEBUG;

        --T_***_BACKUPテーブルよりデータを戻す
        DELETE from T_INITIAL_ZK;
        INSERT INTO T_INITIAL_ZK SELECT * FROM T_INITIAL_ZK_BACKUP;

        DELETE from T_IN_OUT_ZK;
        INSERT INTO T_IN_OUT_ZK SELECT * FROM T_IN_OUT_ZK_BACKUP;

        DELETE from T_LOCATION_MASTER_ZK;
        INSERT INTO T_LOCATION_MASTER_ZK SELECT * FROM T_LOCATION_MASTER_ZK_BACKUP;

        DELETE from T_PIC_MASTER_ZK;
        INSERT INTO T_PIC_MASTER_ZK SELECT * FROM T_PIC_MASTER_ZK_BACKUP;

        DELETE from T_PRODUCTS_ZK;
        INSERT INTO T_PRODUCTS_ZK SELECT * FROM T_PRODUCTS_ZK_BACKUP;

        DELETE from T_PRODUCT_MASTER_ZK;
        INSERT INTO T_PRODUCT_MASTER_ZK SELECT * FROM T_PRODUCT_MASTER_ZK_BACKUP;
     
        DELETE from T_NOT_ENTRY_ZK;

--↓ T_IN_OUT_ZKの日付を新しくする -------------------------------------------------------------------- 

        -- T_IN_OUT_ZKのレコードがあるかどうか
        BEGIN
            select
                COUNT(*) 
                INTO RECORDCOUNT
            FROM
                T_IN_OUT_ZK;
        END;
        
        --もしデータがなければ抜ける
        IF RECORDCOUNT = 0 then
            return;
        END IF;
        
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(RECORDCOUNT));

        --最も新しい日付を取得
        BEGIN
            SELECT
                MAX(T_TIME)
                INTO dtLatestDate
            FROM
                T_IN_OUT_ZK;
        END;
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(dtLatestDate));

        --本日との差分を取得
        BEGIN
            SELECT
                SYSDATE - CAST(dtLatestDate AS DATE)
                INTO DateCount
            FROM
                DUAL;
        END;
        DateCount := TRUNC(DateCount);
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(DateCount));
        
        --日付を更新
        UPDATE
            T_IN_OUT_ZK
        SET
            T_TIME = FROM_TZ (cast(T_TIME + DateCount as timestamp), 'ASIA/TOKYO');
        
        --最も新しい日付を取得
        BEGIN
            SELECT
                MAX(T_TIME)
                INTO dtLatestDate
            FROM
                T_IN_OUT_ZK;
        END;
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(dtLatestDate));

        --↑ T_IN_OUT_ZKの日付を新しくする -------------------------------------------------------------------- 

    END fnc_ResetDemoData; 
 
 
    --デモデータリセットJOB作成 
    procedure fnc_JobCreate IS 
    BEGIN 
        DBMS_SCHEDULER.CREATE_JOB( 
        job_name => 'JOB_ZK_RESET_DEMO_DATA',  
        job_type => 'STORED_PROCEDURE',  
        job_action => 'PKG_ZK_RESET_DEMO_DATA.fnc_ResetDemoData',  
        start_date => TO_TIMESTAMP_TZ(CONCAT(TO_CHAR(CURRENT_DATE, 'yyyy/MM/dd'), ' 00:00:00 +09:00'),'yyyy/mm/dd hh24:mi:ss TZH:TZM'),
        repeat_interval => 'FREQ=DAILY;BYHOUR=0;',  
        auto_drop => FALSE, enabled => TRUE); 
    END fnc_JobCreate; 
   
 
    --デモデータリセットJOB削除 
    procedure fnc_JobDelete IS 
    BEGIN 
        DBMS_SCHEDULER.DROP_JOB('JOB_ZK_RESET_DEMO_DATA'); 
    END fnc_JobDelete; 
 
 
    --デモデータリセットJOB有効化 
    procedure fnc_JobEnabled IS 
    BEGIN 
        DBMS_SCHEDULER.ENABLE('JOB_ZK_RESET_DEMO_DATA'); 
    END fnc_JobEnabled; 
 
 
    --デモデータリセットJOB無効化 
    procedure fnc_JobDisabled IS 
    BEGIN 
        DBMS_SCHEDULER.DISABLE('JOB_ZK_RESET_DEMO_DATA'); 
    END fnc_JobDisabled; 
 
END PKG_ZK_RESET_DEMO_DATA; 
/
--TARGET---------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_IN_OUT_ZK" 
  before insert on "T_IN_OUT_ZK"               
  for each row  
begin   
  if :new."ID" is null then 
    select "T_IN_OUT_ZK_SEQ".nextval into :new."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "bi_T_IN_OUT_ZK" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_IN_OUT_ZK_BACKUP" 
  before insert on "T_IN_OUT_ZK_BACKUP"               
  for each row  
begin   
  if :new."ID" is null then 
    select "T_IN_OUT_ZK_BACKUP_SEQ".nextval into :new."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "bi_T_IN_OUT_ZK_BACKUP" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_NOT_ENTRY_ZK" 
  before insert on "T_NOT_ENTRY_ZK"               
  for each row  
begin   
  if :new."ID" is null then 
    select "T_NOT_ENTRY_ZK_SEQ".nextval into :new."ID" from sys.dual; 
  end if; 
end;

/
ALTER TRIGGER  "bi_T_NOT_ENTRY_ZK" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_PRODUCTS_ZK" 
  before insert on "T_PRODUCTS_ZK"               
  for each row  
begin   
  if :new."ID" is null then 
    select "T_PRODUCTS_ZK_SEQ".nextval into :new."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "bi_T_PRODUCTS_ZK" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "bi_T_PRODUCTS_ZK_BACKUP" 
  before insert on "T_PRODUCTS_ZK_BACKUP"               
  for each row  
begin   
  if :new."ID" is null then 
    select "T_PRODUCTS_ZK_BACKUP_SEQ".nextval into :new."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "bi_T_PRODUCTS_ZK_BACKUP" ENABLE
/
--その他
--過去データ削除JOBの作成＆有効化を実行
begin
 PKG_ZK_DELETE_OLD_DATA.fnc_JobCreate;
 PKG_ZK_DELETE_OLD_DATA.fnc_JobEnabled;
end;
/
--担当者マスタに初期データを挿入T_PIC：admin T_PIC_NAME:admin T_PASSWORD:39393939(16進＆小文字[9999])
INSERT INTO T_PIC_MASTER_ZK ( T_PIC,T_PIC_NAME,T_PASSWORD) VALUES ('admin','admin','39393939');

INSERT INTO T_PIC_MASTER_ZK_BACKUP ( T_PIC,T_PIC_NAME,T_PASSWORD) VALUES ('admin','admin','39393939');

--環境設定テーブルに棚卸開始フラグの値を追加
INSERT INTO T_INITIAL_ZK ( T_INITIAL_ID,T_INITIAL_VALUE,T_CONTENTS) VALUES ('26','0','棚卸開始フラグ');

INSERT INTO T_INITIAL_ZK_BACKUP ( T_INITIAL_ID,T_INITIAL_VALUE,T_CONTENTS) VALUES ('26','0','棚卸開始フラグ');
