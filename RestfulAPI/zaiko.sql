prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.04.04'
,p_default_workspace_id=>17695072528678297
);
end;
/
begin
wwv_flow_api.remove_restful_service(
 p_id=>wwv_flow_api.id(30698769065748207216)
,p_name=>'zaiko'
);
 
end;
/
prompt --application/restful_services/zaiko
begin
wwv_flow_api.create_restful_module(
 p_id=>wwv_flow_api.id(30698769065748207216)
,p_name=>'zaiko'
,p_uri_prefix=>'zaiko/api/'
,p_parsing_schema=>'HSCDEVELOP'
,p_items_per_page=>1000
,p_status=>'PUBLISHED'
,p_row_version_number=>170
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(30700178376556490194)
,p_module_id=>wwv_flow_api.id(30698769065748207216)
,p_uri_template=>'dcmp-cmp?T_MODE={strMode}&T_PIC={strPic}&T_LOCATION_ID={strLocationId}&T_FIELD1={strField1}&T_VALUE={strSuryo}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(30701978727358660347)
,p_template_id=>wwv_flow_api.id(30700178376556490194)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'PUT'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    PKG_ZK_DRS.fnc_DCMPCMP(:strMode, :strPic, :strLocationId, :strField1, :strSuryo);',
'end;',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(31108603705661616)
,p_module_id=>wwv_flow_api.id(30698769065748207216)
,p_uri_template=>'fcmp-cmp'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(31108762917663976)
,p_template_id=>wwv_flow_api.id(31108603705661616)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'POST'
,p_mimes_allowed=>'application/json'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  jo JSON_OBJECT_T;',
'  ja json_array_t;',
'begin',
'  owa_util.mime_header(''application/json'');',
'',
unistr('  --Body\3092\53D6\5F97\3057\3066JSON\30AA\30D6\30B8\30A7\30AF\30C8\306B\683C\7D0D'),
'  jo := JSON_OBJECT_T.parse(:body);',
'',
unistr('  --JSON\30AA\30D6\30B8\30A7\30AF\30C8\304B\3089JSON\914D\5217\306B\683C\7D0D'),
'  ja := jo.get_array(''records'');',
'  --htp.prn(jo.get(''records'').to_string);',
'',
unistr('  --\78BA\5B9A(\30D5\30A1\30A4\30EB\66F8\304D\8FBC\307F)'),
'  PKG_ZK_DRS.fnc_FCMPCMP(ja);',
'',
'end;',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(31317740075790144656)
,p_module_id=>wwv_flow_api.id(30698769065748207216)
,p_uri_template=>'hist-req?MAX_LINE={maxline}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(31318857118649160086)
,p_template_id=>wwv_flow_api.id(31317740075790144656)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    T_TIME + interval ''9'' HOUR AS T_TIME,',
'    T_FIELD1,',
'    T_FIELD2,',
'    --T_FIELD3,',
'    --T_FIELD4,',
'    --T_FIELD5,',
'    --T_FIELD6,',
'    --T_FIELD7,',
'    --T_FIELD8,',
'    --T_FIELD9,',
'    --T_LOCATION_ID,',
'    T_LOCATION_NAME,',
'    --T_PIC,',
'    T_PIC_NAME,',
'    --T_LAST_VALUE,',
'    T_IN_VALUE,',
'    T_OUT_VALUE',
'    --T_NOW_VALUE,',
'    --T_AUTOMATIC,',
'    --T_MANUAL,',
'    --ID',
'from',
'    (',
'        select',
'            *',
'        FROM',
'            T_IN_OUT_ZK',
'        WHERE',
unistr('            --\5728\5EAB\4FEE\6B63\306F\9664\304F\FF08\5165\51FA\5EAB\306E\5C65\6B74\306E\307F\FF09'),
'                T_IN_VALUE IS NOT NULL',
'            OR  T_OUT_VALUE IS NOT NULL',
'        ORDER BY',
'            T_TIME DESC',
'    )',
'WHERE',
'        ROWNUM <= :maxline',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(30878711023039662536)
,p_module_id=>wwv_flow_api.id(30698769065748207216)
,p_uri_template=>'item-req?T_FIELD1={strField1}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(30878707209582678578)
,p_template_id=>wwv_flow_api.id(30878711023039662536)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    *',
'FROM',
'    T_PRODUCT_MASTER_ZK',
'WHERE',
'    T_FIELD1 = :strField1',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(30699548616655378187)
,p_module_id=>wwv_flow_api.id(30698769065748207216)
,p_uri_template=>'loca-req?T_LOCATION_ID={strLocationId}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(30699564668607398024)
,p_template_id=>wwv_flow_api.id(30699548616655378187)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    T_LOCATION_ID,',
'    T_LOCATION_NAME',
'FROM',
'    T_LOCATION_MASTER_ZK',
'WHERE',
'    T_LOCATION_ID = :strLocationId',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(31985088898625623740)
,p_module_id=>wwv_flow_api.id(30698769065748207216)
,p_uri_template=>'tcmp-cmp?T_MODE={strMode}&&T_PIC={strPic}&&T_LOCATION_ID={strLocationId}&&T_FIELD1={strField1}&&T_VALUE={strSuryo}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(31985090802630848792)
,p_template_id=>wwv_flow_api.id(31985088898625623740)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'PUT'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    PKG_ZK_DRS.fnc_TCMPCMP(:strMode, :strPic, :strLocationId, :strField1, :strSuryo);',
'end;',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(30875804203783526244)
,p_module_id=>wwv_flow_api.id(30698769065748207216)
,p_uri_template=>'tnto-req?T_PIC={strPic}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(30875829493155514601)
,p_template_id=>wwv_flow_api.id(30875804203783526244)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'YES'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    T_PIC,',
'    T_PIC_NAME',
'FROM',
'    T_PIC_MASTER_ZK',
'WHERE',
'    T_PIC = :strPic'))
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
