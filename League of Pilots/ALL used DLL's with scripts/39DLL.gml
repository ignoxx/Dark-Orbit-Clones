#define adler32
/*
  This function creates checksum value of the data inside the buffer.
  This can be used for data verification.
  note: Checksums are similar to MD5 but faster and less accurate. It also
  returns a number not a string. Uses adler-32 checksum algorithm.
  The value can be sent as an unsigned int
*/
return external_call(global._UtilC, argument0);
#define bufferdecrypt
/*
  same as bufferencrypt but used to prevent confusion on how to decrypt.
  Argument0 = (string) password
*/
return external_call(global._UtilD, argument0, argument1);
#define bufferencrypt
/*
  Encrypts the buffer with the RC4 encryption algorithm
  Argument0 = (string) password.
*/
return external_call(global._UtilD, argument0, argument1);
#define bufferexists
/*
Returns true if the buffer exists
Argument0: Buffer id to check if it exists.
*/
return external_call(global._BufAF, argument0);
#define buffsize
/*
  Returns the amount of bytes in a buffer.
  [Argument0]: The buffer id to use. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufQ, argument0);
#define buildbyte
/*
  returns a byte based on true/false arguments
  argument0-argument7 = bit values
*/
return argument0*128 + argument1*64 + argument2*32 + argument3*16 + argument4*8 + argument5*4 + argument6*2 + argument7*1; 
#define bytesleft
/*
Returns how much bytes are left to read. Buffsize-Buffreadpos.
[Argument0]: The buffer id to check how many bytes are left. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufAE, argument0);
#define clearbuffer
/*
[Argument0]: The buffer id to use. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufM, argument0);
#define closesocket
/*
Disconnects and frees the selected socket.
Argument0: socket id to close
*/
return external_call(global._SokK, argument0);
#define compareip
/*
This script compares an ip to a masked ip. Will return true if they match.
e.g 127.0.0.1 matches 127.0.0.*
e.g 127.1.0.1 does not match 127.0.0.*
Useful when banning hackers who have a dynamic ip.
Argument0 = Ip
Argument1 = Masked ip.
*/
return external_call(global._SokO, argument1, argument0);
#define copybuffer
/*
appends one buffers data to the end of another
Argument0 = destination buffer;
Argument1 = Source buffer
note: 0 is default buffer
*/
return external_call(global._BufAC, argument0, argument1);
#define copybuffer2
/*
appends PART of one buffers data to the end of another
Argument0 = destination buffer;
Argument1 = start pos in source buffer
Argument2 = Number of bytes to copy from source
Argument3 = source buffer
*/
return external_call(global._BufAD, argument0, argument1, argument2, argument3);
#define createbuffer
/*
    Creates a new buffer and returns the buffers ID
*/
return external_call(global._BufU);
#define dllfree
external_free(global._39dll);
#define dllinit
/*
Initializes the dll. 
Argument0: The dll filename. Set this argument to 0 if you want to use "39dll.dll"
Argument1: Set to true to load socket functions
Argument2: Set to true to load utilities.
*/

global._39dll=argument0;
if is_real(argument0) then global._39dll="39dll.dll";

//Buffer
global._BufA = external_define(global._39dll, "writebyte", dll_cdecl, ty_real, 2, ty_real,ty_real);
global._BufB = external_define(global._39dll, "writestring", dll_cdecl, ty_real, 2, ty_string, ty_real);
global._BufC = external_define(global._39dll, "writeshort", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufD = external_define(global._39dll, "writeint", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufE = external_define(global._39dll, "writefloat", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufF = external_define(global._39dll, "writedouble", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufG = external_define(global._39dll, "readbyte", dll_cdecl, ty_real, 1, ty_real);
global._BufH = external_define(global._39dll, "readstring", dll_cdecl, ty_string, 1, ty_real);
global._BufI = external_define(global._39dll, "readshort", dll_cdecl, ty_real, 1, ty_real);
global._BufJ = external_define(global._39dll, "readint", dll_cdecl, ty_real, 1, ty_real);
global._BufK = external_define(global._39dll, "readfloat", dll_cdecl, ty_real, 1, ty_real);
global._BufL = external_define(global._39dll, "readdouble", dll_cdecl, ty_real, 1, ty_real);
global._BufM = external_define(global._39dll, "clearbuffer", dll_cdecl, ty_real, 1, ty_real);
global._BufN = external_define(global._39dll, "setpos", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufO = external_define(global._39dll, "getpos", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufQ = external_define(global._39dll, "buffsize", dll_cdecl, ty_real, 1, ty_real);
global._BufR = external_define(global._39dll, "writechars", dll_cdecl, ty_real, 2, ty_string, ty_real);
global._BufS = external_define(global._39dll, "readchars", dll_cdecl, ty_string, 2, ty_real, ty_real);
global._BufU = external_define(global._39dll, "createbuffer", dll_cdecl, ty_real, 0);
global._BufX = external_define(global._39dll, "freebuffer", dll_cdecl, ty_real, 1, ty_real);
global._BufY = external_define(global._39dll, "writeushort", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufZ = external_define(global._39dll, "writeuint", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufAA = external_define(global._39dll, "readushort", dll_cdecl, ty_real, 1, ty_real);
global._BufAB = external_define(global._39dll, "readuint", dll_cdecl, ty_real, 1, ty_real);
global._BufAC = external_define(global._39dll, "copybuffer", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._BufAD = external_define(global._39dll, "copybuffer2", dll_cdecl, ty_real,4 , ty_real, ty_real, ty_real, ty_real);
global._BufAE = external_define(global._39dll, "bytesleft", dll_cdecl, ty_real, 1, ty_real);
global._BufAF = external_define(global._39dll, "bufferexists", dll_cdecl, ty_real, 1, ty_real);
global._BufAG = external_define(global._39dll, "readsep", dll_cdecl, ty_string, 2, ty_string, ty_real);
if(argument1)
{
//Sockets
global._SokA = external_define(global._39dll, "tcpconnect", dll_cdecl, ty_real, 3, ty_string, ty_real, ty_real);
global._SokB = external_define(global._39dll, "tcplisten", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_real);
global._SokC = external_define(global._39dll, "tcpaccept", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokD = external_define(global._39dll, "sendmessage", dll_cdecl, ty_real, 4, ty_real, ty_string, ty_real, ty_real);
global._SokE = external_define(global._39dll, "receivemessage", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_real);
global._SokF = external_define(global._39dll, "setsync", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokG = external_define(global._39dll, "setformat", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_string);
global._SokH = external_define(global._39dll, "udpconnect", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokI = external_define(global._39dll, "hostip", dll_cdecl, ty_string, 1, ty_string);
global._SokJ = external_define(global._39dll, "lastinIP", dll_cdecl, ty_string, 0);
global._SokK = external_define(global._39dll, "closesock", dll_cdecl, ty_real, 1, ty_real);
global._SokL = external_define(global._39dll, "tcpip", dll_cdecl, ty_string, 1, ty_real);
global._SokM = external_define(global._39dll, "socklasterror", dll_cdecl, ty_real, 0);
global._SokN = external_define(global._39dll, "myhost", dll_cdecl, ty_string, 0);
global._SokO = external_define(global._39dll, "compareip", dll_cdecl, ty_real, 2, ty_string, ty_string);
global._SokP = external_define(global._39dll, "sockexit", dll_cdecl, ty_real, 0);
global._SokQ = external_define(global._39dll, "sockstart", dll_cdecl, ty_real, 0);
global._SokR = external_define(global._39dll, "getmacaddress", dll_cdecl, ty_string, 0);
global._SokS = external_define(global._39dll, "peekmessage", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_real);
global._SokT = external_define(global._39dll, "setnagle", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokU = external_define(global._39dll, "tcpconnected", dll_cdecl, ty_real, 1, ty_real);
global._SokX = external_define(global._39dll, "getsocketid", dll_cdecl, ty_real, 1, ty_real);
global._SokY = external_define(global._39dll, "lastinPort", dll_cdecl, ty_real, 0);
}
if(argument2)
{
//File functions

global._FilA = external_define(global._39dll, "fileopen", dll_cdecl, ty_real, 2, ty_string, ty_real);
global._FilB = external_define(global._39dll, "fileclose", dll_cdecl, ty_real, 1, ty_real);
global._FilC = external_define(global._39dll, "filewrite", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._FilD = external_define(global._39dll, "fileread", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_real);
global._FilE = external_define(global._39dll, "filepos", dll_cdecl, ty_real, 1, ty_real);
global._FilF = external_define(global._39dll, "filesetpos", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._FilG = external_define(global._39dll, "filesize", dll_cdecl, ty_real, 1, ty_real);

global._UtilA = external_define(global._39dll, "md5string", dll_cdecl, ty_string, 1, ty_string);
global._UtilB = external_define(global._39dll, "md5buffer", dll_cdecl, ty_string, 1, ty_real);
global._UtilC = external_define(global._39dll, "adler32", dll_cdecl, ty_real, 1, ty_real);
global._UtilD = external_define(global._39dll, "bufferencrypt", dll_cdecl, ty_real, 2, ty_string, ty_real);
global._UtilE = external_define(global._39dll, "iptouint", dll_cdecl, ty_real, 1, ty_string);
global._UtilF = external_define(global._39dll, "uinttoip", dll_cdecl, ty_string, 1, ty_real);
global._UtilG = external_define(global._39dll, "netconnected", dll_cdecl, ty_real, 0);

}
#define fileclose
/*
  Closes a open file
  argument0 = file id
*/
return external_call(global._FilB, argument0);
#define fileopen
/*
  Opens or creates a file for reading or writing.
  Argument0 = Filename.
  Argument1 = mode. 0 = reading, 1 = writing, 2 = both reading and writing
  Returns a file id.   
*/
return external_call(global._FilA, argument0, argument1);
#define filepos
/*
  argument0 = file id
  Returns the read/write pos in the open file.
*/
return external_call(global._FilE, argument0);
#define fileread
/*
  Reads bytes from the file and copies to the internal buffer (starting at the
  write position)
  Argument0 = file id.
  Argument1 = Number of bytes to read.
  [Argument2]: The buffer id to receive to. Leave out this argument or set
  it to 0 to use the default buffer.
*/
return external_call(global._FilD, argument0, argument1, argument2);
#define filesetpos
/*
  Sets the read/write pos in the open file. 
  argument0 = file id
  Argument1 = position to set to.
*/

return external_call(global._FilF, argument0, argument1);
#define filesize
/*
  argument0 = file id
  Returns the size of the file in bytes.
*/

return external_call(global._FilG, argument0);
#define filewrite
/*
  Writes the data in a buffer into the open file.
  argument0 = file id
  [Argument1]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/

return external_call(global._FilC, argument0, argument1);
#define freebuffer
/*
Frees (deletes) a buffer. You cannot free the default buffer (0)
Argument0: buffer id
*/
return external_call(global._BufX, argument0);
#define getmacaddress
/*
  returns the computers local MAC address. Do not just rely on this for player banning and the 
  mac address can easily be spoofed.
*/
return external_call(global._SokR);
#define getpos
/*
Returns the read or write pos
Argument0 = read/write. 0 = write pos. 1 = read pos
[Argument1]: The buffer id to use. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufO, argument0, argument1);
#define getsockid
/*
Argument0: Socket id to get the WINSOCK id from.
returns: the WINSOCK id associated with the socket object.
*/
return external_call(global._SokX, argument0);
#define hostip
/*
  Gets the ip of the specified host name.
  Argument0 = host name.
  
  returns the ip address.
*/return external_call(global._SokI, argument0);
#define iptouint
/*
  Converts a ip string (ie 202.13.23.1) to a number.
  The number is the right size to be written as a unsigned int
  in a buffer.
  argument0 = ip address
  returns: number
*/
return external_call(global._UtilE, argument0);
#define lastinIP
/*
    Returns the last incoming IP received from any of the sockets.
    It will return an IP from the following situations:
    1. When you receive a message, lastinIP() will return the IP
    address of the person who sent that message.
    2. When you've just accepted a connection with tcpaccept(), lastinIP()
    will return the ip address of the computer that was accepted.  
*/
return external_call(global._SokJ);
#define lastinPort
/*
    Returns the last incoming port number received from any of the sockets.
    It will return a port number from the following situations:
    1. When you receive a message, lastinPort() will return the senders
    port number that theyre using to send the message. 
*/
return external_call(global._SokY);
#define md5buffer
/*
  returns the MD5 hash of the data inside the buffer
*/
return external_call(global._UtilB, argument0);
#define md5string
/*
  returns a md5 hash of argument0
  argument0 = string
*/
return external_call(global._UtilA, argument0);
#define myhost
//Returns your host name
return external_call(global._SokN);
#define netconnected
/*
  checks if the local computer is connected to the internet
  returns true if it is...
*/
return external_call(global._UtilG);
#define peekmessage
/*
Copies any data recieved on a specified socket to the internal buffer but
does not remove it from the recv buffer.
Argument0 = TCP or UDP socket to recieve from
[Argument1] = Bytes to receive. Optional (otherwise receives as much as
possible)
[Argument2]: The buffer id to receive to. Leave out this argument or set
it to 0 to use the default buffer.
Returns amount of bytes recieved.

NOTE:
If you dont want to save the data to the defualt buffer, than do it like this:
peekmessage(sockid, 0, bufferid);
or peekmessage(sockid, bytestoreceive, bufferid);
*/
return external_call(global._SokS, argument0, argument1, argument2);
#define readbit
/*
  Reads the bit at a certain position in a number
  argument0 = number
  argument1 = bit position (0-7)
  returns the bit value (true/false)
*/
return (argument0 & power(2, argument1))>0;
#define readbyte
/*
Returns a byte from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufG, argument0);
#define readchars
/*
Reads a sequence of characters from the buffer.
Argument0: number of charactered to read
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufS, argument0, argument1);
#define readdouble
/*
Returns a double from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufL, argument0);
#define readfloat
/*
Returns a float from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufK, argument0);
#define readint
/*
Returns a int from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufJ, argument0);
#define readsep
/*
Finds a string in a buffer and returns the data before the string and increments the
buffers readpos.
Argument0: Seperator string.
[Argument1]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.

Example:
writechars("Hello:World:");
show_message(readsep(":")); //will display "Hello"
show_message(readsep(":")); //will display "World"
*/
return external_call(global._BufAG, argument0, argument1);
#define readshort
/*
Returns a short int from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufI, argument0);
#define readstring
/*
Returns a null terminated string from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufH, argument0);
#define readuint
/*
Returns a unsigned int from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufAB, argument0);
#define readushort
/*
Returns a unsigned short int from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufAA, argument0);
#define receivemessage
/*
Receives data from the selected tcp or udp socket and copies to the 
internal buffer.
Argument0 = Socket to recieve from.
[Argument1] = Amount of bytes to receive. Optional. Overrides the format
mode if used.
[Argument2]: The buffer id to receive to. Leave out this argument or set
it to 0 to use the default buffer.

returns the amount of bytes recieved
NOTE:
If you dont want to save the data to the defualt buffer, than do it like this:
receivemessage(sockid, 0, bufferid);
*/
return external_call(global._SokE, argument0, argument1, argument2);
#define sendmessage
/*
  Sends the data in a buffer through the selected tcp or udp socket.
  Argument0 = Socket to send to.
  [Argument1] = Ip to send to (for udp sockets)
  [Argument2] = Port to send to (for udp socket)
  [Argument3]: The buffer id to send. Leave out this argument or set
it to 0 to use the default buffer.
  
  Returns the amount of bytes sent + the bytes used to format the message
  NOTE:
  If you're sending over a tcp socket and dont want to use the default buffer
  than send a message like this:
  sendmessage(sockid, "", 0, bufferid);
*/
return external_call(global._SokD, argument0, argument1, argument2, argument3);
#define setformat
/*
When sending messages over a tcp socket the messages need to be seperated.
The dll provides two methods of seperation. 

Method 0: Binary mode. Setting this mode makes every tcp message have a 2 byte
integer attached at the front which represents the amount of data in that 
message. This is the default method and is reccomended in online games.

Method 1: Text mode. Setting this mode makes every tcp message have a delimeter
added at the end which is used to identify the end of the message. This is
reccomended for text based protocols like irc.

Method 2: No formatting. Only the data in the internal buffer is sent and
no seperation methods are included.

Argument0 = socket id
Argument1 = method number
[Argument2] = seperation string when using method 1.

MAKE SURE THE CORRECT FORMAT MODE IS SET WHEN RECIEVING A MESSAGE THAT IS IN A
SPECIFIC FORMAT.
returns argument0
*/
return external_call(global._SokG, argument0, argument1, argument2);
#define setnagle
/*
Turns on/off the naggle (TCP_NODELAY) algorithm.
argument0 = socket id to affect
argument1 = true/false (true means NODELAY, false means DELAY)
*/
return external_call(global._SokT, argument0, argument1);
#define setpos
/*
  Sets the read/write pos in a buffer
  Argument0 = pos.
  [Argument1]: The buffer id to use. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufN, argument0, argument1);
#define setsync
/*
Changes the blocking/non-blocking mode of a socket.

Argument0 = Socket to change.
Argument1 = Mode to set to. 0 = Blocking. 1 = Non-blocking.
*/
return external_call(global._SokF, argument0, argument1);
#define sockexit
//Call this when you want to free winsock. (The dll automatically does this
//when you free the dll)
return external_call(global._SokP);
#define socklasterror
//Returns the error code for the last socket related error.
//It will be a negative number.
return external_call(global._SokM);
#define sockstart
//Call this when you want to start winsock only after you have used sockexit()
return external_call(global._SokQ);
#define tcpaccept
/*
Accepts any incoming connections on a listening socket.
Argument0 = Listening socket.
Argument1 = Blocking/Non-Blocking mode.

returns the id of a newly created socket or a negative number.
*/
return external_call(global._SokC, argument0, argument1);
#define tcpconnect
/*
  creates a socket and connects to the ip and port
  Argument0 = Ip to connect to.
  Argument1 = Port to connect to.
  Argument2 = Blocking(0)/Non-blocking(1)/Non-blocking++(2) mode.
  
  Set argument2 to 2 if you want it to be non-blocking and also not freeze
  the game while it is connecting. Use tcpconnected() to find out when it has
  connected
*/
return external_call(global._SokA, argument0, argument1, argument2);
#define tcpconnected
/*
argument0 = Socket id to check
Returns true if the tcp socket is connected to a local/remote host.
*/
return external_call(global._SokU, argument0);
#define tcpip
//Returns the ip that the socket is connected to.
//Argument 0 = socket id.
return external_call(global._SokL, argument0);
#define tcplisten
/*
  Creates a listening socket to monitor a certain port for incoming
  connections.
  Argument0 = Port to listen on
  Argument1 = Max amount of people allowed to be in the connected but not
  accepted list
  Argument2 = Blocking(0)/Non-Blocking(1) mode. Affects the tcpaccept script.
  
  returns the id of the socket or a negative error code.
*/
return external_call(global._SokB, argument0, argument1, argument2);
#define udpconnect
/*
Creates a udp socket.
Argument0 = Port to use.
Argument1 = Blocking/non-blocking mode.

HOW TO SEND MESSAGES:
sendmessage(sockid, "ip.to.send.to", portosendto, [bufferid]);
*/
return external_call(global._SokH, argument0, argument1);
#define uinttoip
/*
  Converts a number to a ip address.
  argument0 = number (integer)
  returns: ip address (string)
*/
return external_call(global._UtilF, argument0);
#define writebyte
/*
Write 1 byte. The value can be between 0 and 255
Argument0 : value;
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufA, argument0, argument1);
#define writechars
/*
Writes a sequence of characters to the buffer.
Argument0: String to write.
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufR, argument0, argument1);
#define writedouble
/*
Same as writefloat but the number can be much larger. It can write any number GM supports.
Warning: It uses 8 bytes!!
Argument0: value.
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufF, argument0, argument1);
#define writefloat
/*
Writes a 4 byte real number (number that can contain a decimal place).
Argument0: Value;
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufE, argument0, argument1);
#define writeint
/*
Writes a 4 byte integer to the internal buffer. The value can be between
-2147483648 and +2147483647
Argument0: value
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufD, argument0, argument1);
#define writeshort
/*
Writes a 2 byte integer to the buffer. the value can be between
-32768 and +32767
Argument0 : value
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufC, argument0, argument1);
#define writestring
/*
Write a null terminated string to the buffer
Warning: DO NOT set argument1 to true like you would in the old method. Doing this
will make it try and write to a buffer with the ID of 1 (1 = true)

Argument0 = String to write.
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufB, argument0, argument1);
#define writeuint
/*
Writes a 4 byte UNSIGNED integer to the internal buffer. The value can be between
0 and +4294967296
Argument0: value
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufD, argument0, argument1);
#define writeushort
/*
Writes a 2 byte UNSIGNED integer to the buffer. the value can be between
0 and +65536
Argument0 : value
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
return external_call(global._BufY, argument0, argument1);
