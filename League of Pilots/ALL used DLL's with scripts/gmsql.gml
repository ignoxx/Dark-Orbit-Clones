
#define gmsql_init
dll='GMSQL.DLL';
cl=dll_cdecl;
global.GMSQLInit=external_define(dll,'GMSQLInit',cl,ty_real,0);
global.GMSQLClose=external_define(dll,'GMSQLClose',cl,ty_real,0);
global.GMSQLErrorCode=external_define(dll,'GMSQLErrorCode',cl,ty_real,0);
global.GMSQLErrorMessage=external_define(dll,'GMSQLErrorMessage',cl,ty_string,0);
global.GMSQLConnect=external_define(dll,'GMSQLConnect',cl,ty_real,4,ty_string,ty_string,ty_string,ty_string);
global.GMSQLGetVersion=external_define(dll,'GMSQLGetVersion',cl,ty_string,1,ty_real);
global.GMSQLSelectDB=external_define(dll,'GMSQLSelectDB',cl,ty_real,1,ty_string);
global.GMSQLNumRows=external_define(dll,'GMSQLNumRows',cl,ty_real,0);
global.GMSQLNumFields=external_define(dll,'GMSQLNumFields',cl,ty_real,0);
global.GMSQLQuery=external_define(dll,'GMSQLQuery',cl,ty_real,1,ty_string);
global.GMSQLGetServerInfo=external_define(dll,'GMSQLGetServerInfo',cl,ty_string,0);
global.GMSQLGetClientInfo=external_define(dll,'GMSQLGetClientInfo',cl,ty_string,0);
global.GMSQLGetHostInfo=external_define(dll,'GMSQLGetHostInfo',cl,ty_string,0);
global.GMSQLInfo=external_define(dll,'GMSQLInfo',cl,ty_string,0);
global.GMSQLStat=external_define(dll,'GMSQLStat',cl,ty_string,0);
global.GMSQLPing=external_define(dll,'GMSQLPing',cl,ty_real,0);
global.GMSQLChangeUser=external_define(dll,'GMSQLChangeUser',cl,ty_real,3,ty_string,ty_string,ty_string);
global.GMSQLStoreResult=external_define(dll,'GMSQLStoreResult',cl,ty_real,0);
global.GMSQLUseResult=external_define(dll,'GMSQLUseResult',cl,ty_real,0);
global.GMSQLGetValueXY=external_define(dll,'GMSQLGetValueXY',cl,ty_string,2,ty_real,ty_real);
global.GMSQLGetFieldName=external_define(dll,'GMSQLGetFieldName',cl,ty_string,1,ty_real);
global.GMSQLAffectedRows=external_define(dll,'GMSQLAffectedRows',cl,ty_real,0);
global.GMSQLThreadID=external_define(dll,'GMSQLThreadID',cl,ty_real,0);
global.GMSQLKill=external_define(dll,'GMSQLKill',cl,ty_real,1,ty_real);
global.GMSQLShutDown=external_define(dll,'GMSQLShutDown',cl,ty_real,0);
global.GMSQLReload=external_define(dll,'GMSQLReload',cl,ty_real,0);
global.GMSQLInsertID=external_define(dll,'GMSQLInsertID',cl,ty_real,0);
global.GMSQLDataSeek=external_define(dll,'GMSQLDataSeek',cl,ty_real,1,ty_real);
global.GMSQLFetchRow=external_define(dll,'GMSQLFetchRow',cl,ty_real,0);
global.GMSQLGetValue=external_define(dll,'GMSQLGetValue',cl,ty_string,1,ty_real);
global.GMSQLSaveDataXY=external_define(dll,'GMSQLSaveDataXY',cl,ty_real,3,ty_real,ty_real,ty_string);
global.GMSQLSaveData=external_define(dll,'GMSQLSaveData',cl,ty_real,2,ty_real,ty_string);
return external_call(global.GMSQLInit);



#define gmsql_getfieldname
return external_call(global.GMSQLGetFieldName,argument0);

#define gmsql_reload
return external_call(global.GMSQLReload);

#define gmsql_dataseek
return external_call(global.GMSQLDataSeek,argument0);

#define gmsql_savedataxy
return external_call(global.GMSQLSaveDataXY,argument0,argument1,argument2);

#define gmsql_savedata
return external_call(global.GMSQLSaveData,argument0,argument1);

#define gmsql_getvalue
return external_call(global.GMSQLGetValue,argument0);

#define gmsql_fetchrow
return external_call(global.GMSQLFetchRow);

#define gmsql_threadid
return external_call(global.GMSQLThreadID);

#define gmsql_insertid
return external_call(global.GMSQLInsertID);

#define gmsql_shutdown
return external_call(global.GMSQLShutDown);

#define gmsql_kill
return external_call(global.GMSQLKill,argument0);

#define gmsql_affectedrows
return external_call(global.GMSQLAffectedRows);

#define gmsql_getvaluexy
return external_call(global.GMSQLGetValueXY,argument0,argument1);

#define gmsql_close
return external_call(global.GMSQLClose);


#define gmsql_storeresult
return external_call(global.GMSQLStoreResult);


#define gmsql_useresult
return external_call(global.GMSQLUseResult);


#define gmsql_errorcode
return external_call(global.GMSQLErrorCode);


#define gmsql_info
return external_call(global.GMSQLInfo);


#define gmsql_ping
return external_call(global.GMSQLPing);


#define gmsql_errormessage
return external_call(global.GMSQLErrorMessage);


#define gmsql_changeuser
return external_call(global.GMSQLChangeUser,argument0,argument1,argument2);


#define gmsql_stat
return external_call(global.GMSQLStat);


#define gmsql_getserverinfo
return external_call(global.GMSQLGetServerInfo);


#define gmsql_getclientinfo
return external_call(global.GMSQLGetClientInfo);


#define gmsql_gethostinfo
return external_call(global.GMSQLGetHostInfo);


#define gmsql_connect
return external_call(global.GMSQLConnect,argument0,argument1,argument2,argument3);


#define gmsql_getversion
return external_call(global.GetVersion,argument0);



#define gmsql_selectdb
return external_call(global.GMSQLSelectDB,argument0);



#define gmsql_query
return external_call(global.GMSQLQuery,argument0);



#define gmsql_numrows
return external_call(global.GMSQLNumRows);



#define gmsql_numfields
return external_call(global.GMSQLNumFields);


