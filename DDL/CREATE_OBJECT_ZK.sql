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

--SEQ
 CREATE SEQUENCE   "T_IN_OUT_ZK_BACKUP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_IN_OUT_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_NOT_ENTRY_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 23821 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PIC_MASTER_ZK_BACKUP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PIC_MASTER_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PRODUCTS_ZK_BACKUP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "T_PRODUCTS_ZK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/

--PKG
--H
create or replace PACKAGE  "PKG_ZK_APP" as 
 
    --���O�C���F�� 
    function FUNCTION_CUSTOM_AUTH ( 
    p_username in varchar2, 
    p_password in varchar2 ) 
    return boolean; 
 
    --�݌ɏC�� 
    procedure fnc_InsertManualEditHistory 
    ( 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2, 
        strHinban        IN VARCHAR2, 
        strSuryoOld      IN NUMBER, 
        strSuryo         IN NUMBER 
    ); 
 
    --���o�^���X�g�폜
    procedure fnc_DeleteNotEntryList; 

    --�I���J�n�{�^�� 
    procedure fnc_StartInventory; 
 
    --�I���I���{�^�� 
    procedure fnc_StopInventory; 
 
    --�I�����є��f�{�^�� 
    procedure fnc_UpdateInventory2Stock; 
     
    --�I���̊J�n/�I�����m�F 
    function fnc_IsInventoryOpen return boolean; 
 
end PKG_ZK_APP;
/
--D
create or replace PACKAGE BODY  "PKG_ZK_APP" is 
 
    --���O�C���F�� 
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
 
 
    ---�݌ɏC�� 
    procedure fnc_InsertManualEditHistory 
    ( 
        strPic           VARCHAR2, 
        strLocationId    VARCHAR2, 
        strHinban        VARCHAR2, 
        strSuryoOld      NUMBER, 
        strSuryo         NUMBER 
    ) 
    AS 
        --�ϐ��錾 
        strPicName    T_PIC_MASTER_ZK.T_PIC_NAME%TYPE; 
 
        strLocationName    T_LOCATION_MASTER_ZK.T_LOCATION_NAME%TYPE; 
 
        strField2     T_PRODUCT_MASTER_ZK.T_FIELD2%TYPE; 
        strField3     T_PRODUCT_MASTER_ZK.T_FIELD3%TYPE; 
        strField4     T_PRODUCT_MASTER_ZK.T_FIELD4%TYPE; 
        strField5     T_PRODUCT_MASTER_ZK.T_FIELD5%TYPE; 
         
        strField6     T_PRODUCTS_ZK.T_FIELD6%TYPE; 
 
        BEGIN 
 
            --�� �S���Җ����擾���Ă��� -------------------------------------------------------------------- 
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
            --�� �S���Җ����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�� �I�����擾���Ă��� -------------------------------------------------------------------- 
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
            --�� �I�����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�� �i�����擾���Ă��� -------------------------------------------------------------------- 
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
            --�� �i�����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�������R�[�h�ǉ� 
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
 
    --���o�^���X�g�폜
    procedure fnc_DeleteNotEntryList 
    is  
    BEGIN 
 
        --���o�^���X�g�폜
        DELETE
        FROM
            T_NOT_ENTRY_ZK;
 
    end fnc_DeleteNotEntryList; 

    --�I���J�n�{�^�� 
    procedure fnc_StartInventory 
    is  
    BEGIN 
 
        --�O����ѐ��N���A 
        UPDATE 
            T_PRODUCTS_ZK 
        SET 
            LATEST_INVENTORY_DATA = 0; 
         
        --�I���J�n�t���O�X�V 
        UPDATE 
            T_INITIAL_ZK 
        SET 
            T_INITIAL_VALUE = 1 
        WHERE 
            T_INITIAL_ID = 26; 
 
    end fnc_StartInventory; 
 
    --�I���I���{�^�� 
    procedure fnc_StopInventory 
    is  
    BEGIN 
         
        --�I���J�n�t���O�X�V 
        UPDATE 
            T_INITIAL_ZK 
        SET 
            T_INITIAL_VALUE = 0 
        WHERE 
            T_INITIAL_ID = 26; 
         
    end fnc_StopInventory; 
 
 
    --�I�����є��f�{�^�� 
    procedure fnc_UpdateInventory2Stock 
    is  
    begin 
         
        --���ѐ��X�V 
        UPDATE 
            T_PRODUCTS_ZK 
        SET 
            T_FIELD6 = LATEST_INVENTORY_DATA; 
 
    end fnc_UpdateInventory2Stock; 
     
    --�I���X�e�[�^�X�̊m�F 
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

--H
create or replace PACKAGE  "PKG_ZK_DELETE_OLD_DATA" IS 
 
    --�ߋ��f�[�^�폜 
    procedure fnc_DeleteOldData; 
 
    --�ߋ��f�[�^�폜JOB�쐬 
    procedure fnc_JobCreate; 
 
    --�ߋ��f�[�^�폜JOB�폜 
    procedure fnc_JobDelete; 
     
    --�ߋ��f�[�^�폜JOB�L���� 
    procedure fnc_JobEnabled; 
 
    --�ߋ��f�[�^�폜JOB������ 
    procedure fnc_JobDisabled; 
 
END PKG_ZK_DELETE_OLD_DATA; 
 
--�o�^�ς݂�JOB�ꗗ�͉��L��SQL�Ŏ擾���� 
--SELECT * FROM USER_SCHEDULER_JOBS;
/
--D
create or replace PACKAGE BODY  "PKG_ZK_DELETE_OLD_DATA" IS 
 
    --�ߋ��f�[�^�폜 
    procedure fnc_DeleteOldData IS 
    BEGIN 
     
        --T_IN_OUT_ZK�폜 
        DELETE 
        FROM 
            T_IN_OUT_ZK 
        WHERE 
            TO_DATE(SYSDATE, 'yyyy/mm/dd hh24:mi:ss') > TO_DATE(ADD_MONTHS(T_TIME, 12), 'yyyy/mm/dd hh24:mi:ss');  
 
        COMMIT; 
 
    END fnc_DeleteOldData; 
 
 
    --�ߋ��f�[�^�폜JOB�쐬 
    procedure fnc_JobCreate IS 
    BEGIN 
        DBMS_SCHEDULER.CREATE_JOB( 
            job_name => 'JOB_ZK_DELETE_OLD_DATA',  
            job_type => 'STORED_PROCEDURE',  
            job_action => 'PKG_DELETE_OLD_DATA.fnc_DeleteOldData',  
            start_date => TO_TIMESTAMP_TZ(CONCAT(TO_CHAR(CURRENT_DATE, 'yyyy/MM/dd'), ' 00:00:00 +09:00'),'yyyy/mm/dd hh24:mi:ss TZH:TZM'),
            repeat_interval => 'FREQ=DAILY;',  
            auto_drop => FALSE, enabled => TRUE); 
    END fnc_JobCreate; 
   
 
    --�ߋ��f�[�^�폜JOB�폜 
    procedure fnc_JobDelete IS 
    BEGIN 
        DBMS_SCHEDULER.DROP_JOB('JOB_ZK_DELETE_OLD_DATA'); 
    END fnc_JobDelete; 
 
 
    --�ߋ��f�[�^�폜JOB�L���� 
    procedure fnc_JobEnabled IS 
    BEGIN 
        DBMS_SCHEDULER.ENABLE('JOB_ZK_DELETE_OLD_DATA'); 
    END fnc_JobEnabled; 
 
 
    --�ߋ��f�[�^�폜JOB������ 
    procedure fnc_JobDisabled IS 
    BEGIN 
        DBMS_SCHEDULER.DISABLE('JOB_ZK_DELETE_OLD_DATA'); 
    END fnc_JobDisabled; 
 
END PKG_ZK_DELETE_OLD_DATA;
/

--H
create or replace PACKAGE  "PKG_ZK_DRS" as 
 
    --�m�� 
    procedure fnc_DCMPCMP 
    ( 
        strMode          IN NUMBER, 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2, 
        strHinban        IN VARCHAR2, 
        strSuryo         IN VARCHAR2,
        dtTime           IN TIMESTAMP WITH TIME ZONE DEFAULT systimestamp at time zone 'Asia/Tokyo'
    ); 
 
 
    --�I���m�� 
    procedure fnc_TCMPCMP 
    ( 
        strMode          IN NUMBER, 
        strPic           IN VARCHAR2, 
        strLocationId    IN VARCHAR2, 
        strHinban        IN VARCHAR2, 
        strSuryo         IN VARCHAR2,
        dtTime           IN TIMESTAMP WITH TIME ZONE DEFAULT systimestamp at time zone 'Asia/Tokyo'
    ); 
 
 
    --�m��(�t�@�C����������) 
    procedure fnc_FCMPCMP 
    ( 
        ja               IN JSON_ARRAY_T 
    ); 
 
end;
/
--D
create or replace PACKAGE BODY  "PKG_ZK_DRS" IS 
 
    --�m�� 
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
        --�ϐ��錾 
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
                
            --�� �S���Җ����擾���Ă��� -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_PIC_NAME 
                    INTO strPicName 
                FROM 
                    T_PIC_MASTER_ZK 
                WHERE 
                    T_PIC = strPic 
                    OR upper(T_PIC) = strPic; 
                    --�蓮���͂���̓��͂�z�肵�āA�啶���ł��������Ă��� 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strPicName := ''; 
            END; 
            --�� �S���Җ����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�� �I�����擾���Ă��� -------------------------------------------------------------------- 
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
                    
                    --���o�^���X�g�ǉ� 
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
                        
                    --�����𔲂���
                    return;
            END; 
            --�� �I�����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�� �i�����擾���Ă��� -------------------------------------------------------------------- 
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
                    
                    --���o�^���X�g�ǉ� 
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
                        
                    --�����𔲂���
                    return;
            END; 
            --�� �i�����擾���Ă��� -------------------------------------------------------------------- 
 

            --�� �݌ɂ��X�V���� -------------------------------------------------------------------- 
            BEGIN 
 
                --���݌ɐ����擾���� 
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
                
                --���ɐ� 
                IF strMode = 1 THEN 
                    InOut_Value := TO_NUMBER(strSuryo); 
                --�o�ɐ� 
                ELSIF strMode = 2 THEN 
                    InOut_Value := 0 - TO_NUMBER(strSuryo); 
                ELSE 
                    InOut_Value := 0; 
                END IF; 
                 
                --�݌Ƀe�[�u���X�V 
                IF strField6 IS NOT NULL THEN 
 
                    --�݌ɐ��X�V 
                    UPDATE 
                        T_PRODUCTS_ZK 
                    SET 
                        T_FIELD6 = (LastInventory + InOut_Value) 
                    WHERE 
                        T_LOCATION_ID = strLocationId 
                        and T_FIELD1 = strHinban 
                        and rownum = 1; 

                    ELSE 
 
                    --�݌Ƀ��R�[�h�ǉ� 
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
 
 
            --�������R�[�h�ǉ� 
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
         
         
    --�I���m�� 
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
        --�ϐ��錾 
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
 
            --�� �S���Җ����擾���Ă��� -------------------------------------------------------------------- 
            BEGIN 
 
                SELECT 
                    T_PIC_NAME 
                    INTO strPicName 
                FROM 
                    T_PIC_MASTER_ZK 
                WHERE 
                    T_PIC = strPic 
                    OR upper(T_PIC) = strPic; 
                    --�蓮���͂���̓��͂�z�肵�āA�啶���ł��������Ă��� 
 
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN 
                    strPicName := ''; 
            END; 
            --�� �S���Җ����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�� �I�����擾���Ă��� -------------------------------------------------------------------- 
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
                    
                    --���o�^���X�g�ǉ� 
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
                        
                    --�����𔲂���
                    return;
            END; 
            --�� �I�����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�� �i�����擾���Ă��� -------------------------------------------------------------------- 
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
                    
                    --���o�^���X�g�ǉ� 
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
                        
                    --�����𔲂���
                    return;
            END; 
            --�� �i�����擾���Ă��� -------------------------------------------------------------------- 
 
 
            --�� ���I�����X�V���� -------------------------------------------------------------------- 
            BEGIN 
 
                --���݌ɐ����擾���� 
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
                 
                --���I�� 
                InOut_Value := TO_NUMBER(strSuryo); 
 
                --���I���e�[�u���X�V 
                IF strLatestInventory IS NOT NULL THEN 
 
                    --���I���X�V 
                    UPDATE 
                        T_PRODUCTS_ZK 
                    SET 
                        LATEST_INVENTORY_DATA = (LastInventory + InOut_Value) 
                    WHERE 
                        T_LOCATION_ID = strLocationId 
                        and T_FIELD1 = strHinban 
                        and rownum = 1; 
 
                ELSE 
 
                    --�݌Ƀ��R�[�h�ǉ� 
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
         
 
    --�m��(�t�@�C����������) 
    procedure fnc_FCMPCMP 
    ( 
        ja          JSON_ARRAY_T 
    ) 
    AS 
        --�ϐ��錾 
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

        --�z�񕪂̏��������� 
        for i in 0..ja.get_size - 1 
        loop 
 
            --JSON�̔z�񂩂�P�s�����o�� 
            je := ja.get(i); 
            if (je.is_object) then 
 
                --JSON�I�u�W�F�N�g�ɕϊ� 
                jo := treat(je as json_object_t); 
 
                --�I�u�W�F�N�g���擾 
                strRecord := jo.get('record').to_string; 
                strRecord := REPLACE(strRecord, '"', '');    --�擪�Ɩ����̃_�u���N�H�[�e�[�V�����΍� 
                strTime := strtoken(strRecord, ',', 1); 
                strBTID := strtoken(strRecord, ',', 2); 
                strMode := strtoken(strRecord, ',', 3); 
                strPic := strtoken(strRecord, ',', 4); 
                strLocationId := strtoken(strRecord, ',', 5); 
                strField1 := strtoken(strRecord, ',', 6); 
                strSuryo := strtoken(strRecord, ',', 7); 
                
                --��������
                IF strMode != '3' THEN
                    --����/�o��
                    PKG_ZK_DRS.fnc_DCMPCMP(TO_NUMBER(strMode), strPic, strLocationId, strField1, strSuryo, TO_TIMESTAMP_TZ(CONCAT(strTime, ' +09:00'), 'YYYY-MM-DD HH24:MI:SS TZH:TZM')); 
                ELSE
                    --�I��
                    PKG_ZK_DRS.fnc_TCMPCMP(TO_NUMBER(strMode), strPic, strLocationId, strField1, strSuryo, TO_TIMESTAMP_TZ(CONCAT(strTime, ' +09:00'), 'YYYY-MM-DD HH24:MI:SS TZH:TZM')); 
                END IF;

            end if; 
 
        end loop; 

    END fnc_FCMPCMP;  
 
END PKG_ZK_DRS;
/

--H
create or replace PACKAGE  "PKG_ZK_RESET_DEMO_DATA" IS 
 
    --�f���f�[�^���Z�b�g
    procedure fnc_ResetDemoData; 
 
    --�f���f�[�^���Z�b�gJOB�쐬 
    procedure fnc_JobCreate; 
 
    --�f���f�[�^���Z�b�gJOB�폜 
    procedure fnc_JobDele
    te; 
     
    --�f���f�[�^���Z�b�gJOB�L���� 
    procedure fnc_JobEnabled; 
 
    --�f���f�[�^���Z�b�gJOB������ 
    procedure fnc_JobDisabled; 
 
END PKG_ZK_RESET_DEMO_DATA;
 
--�o�^�ς݂�JOB�ꗗ�͉��L��SQL�Ŏ擾���� 
--SELECT * FROM USER_SCHEDULER_JOBS; 
/

--D
create or replace PACKAGE BODY  "PKG_ZK_RESET_DEMO_DATA" IS 
 
    --�f���f�[�^���Z�b�g 
    procedure fnc_ResetDemoData
    IS
   
        --�ϐ��錾 
        RECORDCOUNT   NUMBER; 
        dtLatestDate   T_IN_OUT_ZK.T_TIME%TYPE; 
        DateCount   NUMBER; 
    
    BEGIN
    
        --debug
        DELETE FROM T_DEBUG;

        --T_***_BACKUP�e�[�u�����f�[�^��߂�
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

--�� T_IN_OUT_ZK�̓��t��V�������� -------------------------------------------------------------------- 

        -- T_IN_OUT_ZK�̃��R�[�h�����邩�ǂ���
        BEGIN
            select
                COUNT(*) 
                INTO RECORDCOUNT
            FROM
                T_IN_OUT_ZK;
        END;
        
        --�����f�[�^���Ȃ���Δ�����
        IF RECORDCOUNT = 0 then
            return;
        END IF;
        
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(RECORDCOUNT));

        --�ł��V�������t���擾
        BEGIN
            SELECT
                MAX(T_TIME)
                INTO dtLatestDate
            FROM
                T_IN_OUT_ZK;
        END;
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(dtLatestDate));

        --�{���Ƃ̍������擾
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
        
        --���t���X�V
        UPDATE
            T_IN_OUT_ZK
        SET
            T_TIME = FROM_TZ (cast(T_TIME + DateCount as timestamp), 'ASIA/TOKYO');
        
        --�ł��V�������t���擾
        BEGIN
            SELECT
                MAX(T_TIME)
                INTO dtLatestDate
            FROM
                T_IN_OUT_ZK;
        END;
        --debug
        --INSERT INTO T_DEBUG (T_MESSAGE) VALUES(TO_CHAR(dtLatestDate));

        --�� T_IN_OUT_ZK�̓��t��V�������� -------------------------------------------------------------------- 

    END fnc_ResetDemoData; 
 
 
    --�f���f�[�^���Z�b�gJOB�쐬 
    procedure fnc_JobCreate IS 
    BEGIN 
        DBMS_SCHEDULER.CREATE_JOB( 
        job_name => 'JOB_ZK_RESET_DEMO_DATA',  
        job_type => 'STORED_PROCEDURE',  
        job_action => 'PKG_RESET_DEMO_DATA.fnc_ResetDemoData',  
        start_date => TO_TIMESTAMP_TZ(CONCAT(TO_CHAR(CURRENT_DATE, 'yyyy/MM/dd'), ' 00:00:00 +09:00'),'yyyy/mm/dd hh24:mi:ss TZH:TZM'),
        repeat_interval => 'FREQ=DAILY;BYHOUR=0;',  
        auto_drop => FALSE, enabled => TRUE); 
    END fnc_JobCreate; 
   
 
    --�f���f�[�^���Z�b�gJOB�폜 
    procedure fnc_JobDelete IS 
    BEGIN 
        DBMS_SCHEDULER.DROP_JOB('JOB_ZK_RESET_DEMO_DATA'); 
    END fnc_JobDelete; 
 
 
    --�f���f�[�^���Z�b�gJOB�L���� 
    procedure fnc_JobEnabled IS 
    BEGIN 
        DBMS_SCHEDULER.ENABLE('JOB_ZK_RESET_DEMO_DATA'); 
    END fnc_JobEnabled; 
 
 
    --�f���f�[�^���Z�b�gJOB������ 
    procedure fnc_JobDisabled IS 
    BEGIN 
        DBMS_SCHEDULER.DISABLE('JOB_ZK_RESET_DEMO_DATA'); 
    END fnc_JobDisabled; 
 
END PKG_ZK_RESET_DEMO_DATA; 
/
--�f�[�^�Z�b�g
--�S���҃}�X�^�ɏ����f�[�^��}��T_PIC�Fadmin T_PIC_NAME:admin T_PASSWORD:39393939(16�i��������[9999])
INSERT INTO T_PIC_MASTER_ZK ( T_PIC,T_PIC_NAME,T_PASSWORD) VALUES ('admin','admin','39393939');
/
--���ݒ�e�[�u���ɒI���J�n�t���O�̒l��ǉ�
INSERT INTO T_INITIAL_ZK ( T_INITIAL_ID,T_INITIAL_VALUE,T_CONTENTS) VALUES ('26','0','�I���J�n�t���O');
/
