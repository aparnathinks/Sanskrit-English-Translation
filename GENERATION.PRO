/*****************************************************************************

		Copyright (c) My Company

 Project:  EURAKA
 FileName: GENERATION.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/
include "dictionary.pro"
predicates
   equivalent(string)
   equivalentn(string)
   equivalentv(string)
   equivalenti(string)
   place(string,string,string)

clauses


   equivalent(Inp):- 
        frontstr(1,Inp,POS,_),
   	POS="N",
   	equivalentn(Inp);
   	frontstr(1,Inp,POS,_),
   	POS="V",
   	equivalentv(Inp);  
   	frontstr(1,Inp,POS,_),
   	POS="X",
   	equivalenti(Inp).
   equivalentn(Inp):-
   	searchstring(Inp,"(",X),
   	frontstr(X,Inp,_,Next1),
   	searchstring(Next1,")",X1),
   	D1=X1-1,
   	frontstr(D1,Next1,Root,_),
   	searchstring(Inp,"+",X2),
   	frontstr(X2,Inp,_,Remaining2),
   	searchstring(Remaining2,"+",X3),
   	D3=X3-1,
   	frontstr(D3,Remaining2,Case,Remaining3),
   	frontstr(1,Remaining3,_,Pos),
   	meaning(Case,M),
   	place(Root,M,Pos),
        write(" ").
   equivalentv(Inp):-
	searchstring(Inp,"(",X),
   	frontstr(X,Inp,_,Next1),
   	searchstring(Next1,")",X1),
   	D1=X1-1,
   	frontstr(D1,Next1,Root,_),
   	searchstring(Inp,"+",X2),
   	frontstr(X2,Inp,_,Remaining2),
   	searchstring(Remaining2,"+",X3),
   	D3=X3-1,
   	frontstr(D3,Remaining2,Case,Remaining3),
   	frontstr(1,Remaining3,_,Pos),
   	meaning(Case,M),
   	place(Root,M,Pos),
        write(" ").
   equivalenti(Inp):-
   	searchstring(Inp,"(",X),
   	frontstr(X,Inp,_,Next1),
   	searchstring(Next1,")",X1),
   	D1=X1-1,
   	frontstr(D1,Next1,Root,_),
   	write(Root," ").
   place(Root,Case,Pos):-
   	Pos="POST",
   	write(Root,Case);
   	Pos="PRE",
   	write(Case,Root);
   	Pos="NO",
   	write(Root).