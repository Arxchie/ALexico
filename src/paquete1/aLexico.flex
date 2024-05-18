package paquete1;
import static paquete1.Tokens.*;

// miLexer.jflex
%%
%class aLexico
%unicode
%public
%type Tokens

%{
   public String lexema;
%}

// Expresiones regulares
DIGITO = [0-9]
LETRA = [a-zA-Z]
ESPACIOS = [ \t\n\r]+
ID = {LETRA}({LETRA}|{DIGITO}|_)*
NUMERO = {DIGITO}+(\.{DIGITO}+)?

%%
"+" {lexema = yytext(); return suma; }
"-" {lexema = yytext(); return resta; }
"*" {lexema = yytext(); return multiplicacion; }
"/" {lexema = yytext(); return division; }
"==" {lexema = yytext(); return igual; }
"!=" {lexema = yytext(); return diferente; }
"<" {lexema = yytext(); return menor; }
"<=" {lexema = yytext(); return menorIgual; }
">" { lexema = yytext();return mayor; }
">=" {lexema = yytext(); return mayorIgual; }
"=" { lexema = yytext();return asignacion; }
"&&" { lexema = yytext();return yLogico; }
"||" { lexema = yytext();return oLogico; }
"!" {lexema = yytext(); return negacion; }
"if" { lexema = yytext();return condicionIf; }
"else" {lexema = yytext(); return condicionElse; }
"while" {lexema = yytext(); return bucleWhile; }
"for" {lexema = yytext(); return bucleFor; }
"do" {lexema = yytext(); return bucleDo; }
"return" {lexema = yytext(); return retorno; }
"break" { lexema = yytext();return interrupcion; }
"continue" { lexema = yytext();return continuar; }
"switch" {lexema = yytext(); return seleccionSwitch; }
"case" {lexema = yytext(); return casoSwitch; }
"default" { lexema = yytext();return predeterminadoSwitch; }
"(" {lexema = yytext(); return pApertura; }
")" {lexema = yytext(); return pCierre; }
"{" {lexema = yytext(); return llaveApertura; }
"}" { lexema = yytext();return llaveCierre; }
";" { lexema = yytext();return puntoComa; }
"," {lexema = yytext(); return coma; }

{ESPACIOS} { /* Ignorar espacios en blanco y saltos de línea */ }
{ID} { lexema = yytext(); return id; }
{NUMERO} { lexema = yytext(); return numero; }

. { /* Ignorar otros caracteres */ }

