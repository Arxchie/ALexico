package paquete;
import static codigo.Tokens.*;
// miLexer.jflex
%%
%class aLexico
%unicode
%public
%type TOKEN

// Definición de tokens
%token ID
%token INT
%token REAL
%token BOOL

// Expresiones regulares
DIGITO = [0-9]
LETRA = [a-zA-Z]
// Definición de tokens
%%
{LETRA}({LETRA}|{DIGITO}|'_')*  { return ID;}
{DIGITO}+                     { return ENTERO; }
[-+]?[0-9]+(\.[0-9]+)?     { return REAL; }
true|false                 { return BOOL; }
.                            { /* Ignorar otros caracteres */ }
