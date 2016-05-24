grammar Algoritma;		
prog:	basla (satir)* dur;
expr:	expr ('*'|'/') expr
    |	expr ('+'|'-') expr
    |	INT
    |	DEGISKEN
    |	'(' expr ')'
    ;

INT     : [0-9]+ ;
basla   : INT '.' 'basla' ;
dur     : INT '.' 'dur' ;
satir   : INT  '.'  komut ;
komut   : 'yaz' expr
        | 'git' INT
        | 'eger' kosul 'ise' komut ('yoksa' komut)? 
		| (DEGISKEN '=' expr)
        ;
kosul   : kosul 've' kosul
		| kosul ('veya' kosul)?
		| expr ('<'|'>'|'=='|'!='|'<='|'>=') expr
		| '(' kosul ')';
WS  : [ \t\r\n]+ -> skip ;
DEGISKEN : [a-zA-Z] [a-zA-Z0-9_]* ;