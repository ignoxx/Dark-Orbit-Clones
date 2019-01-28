#define iniClearBuffer
external_call(global.iniI);
#define iniClearFile
return external_call(global.iniJ, argument0);
#define iniEnd
external_free(global.iniDLL);
#define iniKeyDelete
return external_call(global.iniH, argument0, argument1, argument2);
#define iniKeyExists
return external_call(global.iniF, argument0, argument1, argument2);
#define iniReadReal
return external_call(global.iniA, argument0, argument1, argument2, argument3);
#define iniReadString
return external_call(global.iniB, argument0, argument1, argument2, argument3);
#define iniRecheckFile
return external_call(global.iniL, argument0);
#define iniSectionDelete
return external_call(global.iniG, argument0, argument1);
#define iniSectionExists
return external_call(global.iniE, argument0, argument1);
#define iniSettings
return external_call(global.iniK, argument0);
#define iniStart
if (is_real(argument0))
    global.iniDLL = "myINI.dll";
else
    global.iniDLL = argument0;
global.iniA = external_define(global.iniDLL, "iniReadReal", dll_cdecl, ty_real, 4, ty_string, ty_string, ty_string, ty_real);
global.iniB = external_define(global.iniDLL, "iniReadString", dll_cdecl, ty_string, 4, ty_string, ty_string, ty_string, ty_string);
global.iniC = external_define(global.iniDLL, "iniWriteReal", dll_cdecl, ty_real, 4, ty_string, ty_string, ty_string, ty_real);
global.iniD = external_define(global.iniDLL, "iniWriteString", dll_cdecl, ty_real, 4, ty_string, ty_string, ty_string, ty_string);
global.iniE = external_define(global.iniDLL, "iniSectionExists", dll_cdecl, ty_real, 2, ty_string, ty_string);
global.iniF = external_define(global.iniDLL, "iniKeyExists", dll_cdecl, ty_real, 3, ty_string, ty_string, ty_string);
global.iniG = external_define(global.iniDLL, "iniSectionDelete", dll_cdecl, ty_real, 2, ty_string, ty_string);
global.iniH = external_define(global.iniDLL, "iniKeyDelete", dll_cdecl, ty_real, 3, ty_string, ty_string, ty_string);
global.iniI = external_define(global.iniDLL, "iniClearBuffer", dll_cdecl, ty_real, 0);
global.iniJ = external_define(global.iniDLL, "iniClearFile", dll_cdecl, ty_real, 1, ty_string);
global.iniK = external_define(global.iniDLL, "iniSettings", dll_cdecl, ty_real, 1, ty_real);
global.iniL = external_define(global.iniDLL, "iniRecheckFile", dll_cdecl, ty_real, 1, ty_string);
#define iniWriteReal
external_call(global.iniC, argument0, argument1, argument2, argument3);
#define iniWriteString
external_call(global.iniD, argument0, argument1, argument2, argument3);
