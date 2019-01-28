#define cleanmem_init
//Clean Memory DLL by Halo Shg
//Edited by IGnoXX

if is_real(argument0){global._clDLL = 'clDLL.dll';}else
global._clDLL = string(argument0);

    
global._cleanmem = external_define(global._clDLL,'halo_shg_clean',dll_cdecl,ty_real,0);
global._cleanmem_get_mem = external_define(global._clDLL,'halo_shg_get_mem',dll_cdecl,ty_real,0);




#define cleanmem_free
//Clean Memory DLL by Halo Shg
//Edited by IGnoXX

external_free(global._clDLL);



#define cleanmem
//Clean Memory DLL by Halo Shg edited by IGnoXX
//result = cleanmem();
//
//Returns 0 if fails 
//nonzero if succeeds.

var i;
i = external_call(global._cleanmem);

return (i);


#define cleanmem_get_mem
//Clean Memory DLL by Halo Shg edited by IGnoXX

//mem = cleanmem_get_mem();
//
//Returns 0 if fails, or memory in bytes if succeeds.

var i;
i = external_call(global._cleanmem_get_mem);

return (i);


