%ifndef __STR_INC__
%define __STR_INC__

%macro .STRING 2+
    %1 db %2, 0x0
%endmacro

extern _strlen
extern _strcmp
extern _strcpy
extern _strcat

extern _strtonum
extern _numtostr

%endif ; __STR_INC__