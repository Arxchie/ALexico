package paquete1;
import static paquete1.Tokens.*;

// miLexer.jflex
%%
%class aLexico
%unicode
%public
%type Tokens

// Definición de tokens
%{
public String lexema;
%}

// Expresiones regulares
DIGITO = [0-9]
LETRA = [a-zA-Z]
ESPACIOS = [ \t\n\r]+
%%
"+" { return Suma; }
"-" { return Resta; }
"*" { return Multiplicacion; }
"/" { return Division; }
"==" { return Igual; }
{ESPACIOS} { /* Ignorar espacios en blanco */ }
{LETRA}({LETRA}|{DIGITO}|_)* { lexema = yytext(); return ID; }
{DIGITO}+ { lexema = yytext(); return ENTERO; }
[-+]?[0-9]+(\.[0-9]+)? { lexema = yytext(); return REAL; }
true|false { lexema = yytext(); return BOOL; }
. { /* Ignorar otros caracteres */ }

