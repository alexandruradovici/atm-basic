atm-basic
=========

Corectare
---------

Copiati fisierele voastre, main.js si parser-ul, in acest director.

Script-ul de corectare este corectare_tema2.sh. Trebuie sa il faceti executabil inainte.

    chmod a+x corectare_tema2.sh
    ./corectare_tema2.sh

ATENTIE: testele nu sunt inca toate, voi mai adauga

files - contine fisierele sursa pentru teste impartite pe categorii
outputs - contine fisierele rezultate
   .out - scris pe ecran
   .errno - numarul erorii

Dupa corectare, apare un director numit results. Acelea sunt rezultatul rularii temei

Codurile de eroare
------------------

    var ERROR_PARSER=1;
    var ERROR_VARIABLE_REDECLARED=2;
    var ERROR_VARIABLE_UNDECLARED=3;
    var ERROR_SUB_REDECLARED=4;
    var ERROR_SUB_UNDECLARED=5;
    var ERROR_TYPECAST=6;
    var ERROR_DIVISION_BY_0=7;
    var ERROR_WRONG_NUMBER_PARAMETERS=8;
