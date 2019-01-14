/*****************************************************************************

		Copyright (c) My Company

 Project:  APARNA
 FileName: C:\APARNA\MAIN.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "aparna.con"
include "hlptopic.con"
include "split.pro"
include "generation.pro"

predicates
   compact(string)
   split_sentence(string)
   parsing(string)
   generate_parse(integer,string)
   generate(string,integer)
   translate
clauses
  split_sentence(Inp):-
   	searchstring(Inp," ",X),
   	D=X-1,
   	frontstr(D,Inp,NewString,Remaining),
   	frontstr(1,Remaining,_,Next),
   	vichcheda(1,NewString),
   	writeoutput(" ","c:/aparna/intermediate.txt"),
        split_sentence(Next);
        not(searchstring(Inp," ",_)),
        vichcheda(1,Inp). 
   compact(Inp):-
   	searchstring(Inp," ",X),
   	D=X-1,
   	frontstr(D,Inp,NewString,Remaining),
   	frontstr(1,Remaining,_,Next),
   	frontstr(1,Next,Y,Z),
	frontstr(1,Z,V,W),
	V=" ",   	
   	vowel(Y),
   	write(Newstring," "),
        compact(W);
        searchstring(Inp," ",X),
   	D=X-1,
   	frontstr(D,Inp,NewString,Remaining),
   	frontstr(1,Remaining,_,Next),
   	frontstr(1,Next,_,Z),
	frontstr(1,Z,V,_),
	not(V=" "),   	
   	write(Newstring," "),
        compact(Next); 
        not(searchstring(Inp," ",_)),
        write(Inp).
       
  parsing(Inp):-
  	searchstring(Inp," ",X),
   	D=X-1,
   	frontstr(D,Inp,NewString,Remaining),
   	frontstr(1,Remaining,_,Next),
   	generate_parse(1,NewString),
        parsing(Next);
        not(searchstring(Inp," ",_)),
        generate_parse(1,Inp).
        
   generate_parse(Node1,OldString):-
   	arc(Node1,Node2,Label,Parse),
   	searchstring(OldString, Label, X), X=1,
   	traverse(Label,OldString,NewString),
   	write(Parse),
   	generate_parse(Node2,NewString).
   generate_parse(Node1,""):- final(Node1).
   generate(Inp,N):-
   	searchstring(Inp,"%",X),
   	D=X-1,
   	frontstr(D,Inp,NewString,Remaining),
   	frontstr(1,Remaining,_,Next),
   	frontstr(1,NewString,POS,_),
   	POS="N",N=1,
   	equivalent(NewString),
   	N1=N+1,
   	generate(Next,N1);
        searchstring(Inp,"%",X1),
   	D1=X1-1,
   	frontstr(D1,Inp,NewString1,Remaining1),
   	frontstr(1,Remaining1,_,Next1),
   	frontstr(1,NewString1,POS1,_),
   	POS1="N",N=3,
   	equivalent(NewString1),
   	N2=N+1,
   	generate(Next1,N2);
   	searchstring(Inp,"%",X2),
   	D2=X2-1,
   	frontstr(D2,Inp,NewString2,Remaining2),
   	frontstr(1,Remaining2,_,Next2),
   	frontstr(1,NewString2,POS2,_),
   	POS2="V",N=2,
   	equivalent(NewString2),
   	N3=N+1,
   	generate(Next2,N3);
        searchstring(Inp,"%",X3),
   	D3=X3-1,
   	frontstr(D3,Inp,NewString3,Remaining3),
   	frontstr(1,Remaining3,_,Next3),
   	frontstr(1,NewString3,POS3,_),
   	POS3="X",N=2,
   	equivalent(NewString3),
   	N4=N+4,
   	generate(Next3,N4);
   	searchstring(Inp,"%",X4),
   	D4=X4-1,
   	frontstr(D4,Inp,NewString4,Remaining4),
   	frontstr(1,Remaining4,_,Next4),
   	generate(Next4,N),
   	equivalent(NewString4);!.
   	%not(searchstring(Inp,"%",_)),
   	%equivalent(Inp).        
  translate:-
     openwrite(output1,"c:/aparna/intermediate.txt"),
     write(""),
     closefile(output1),    
     openwrite(output1,"c:/aparna/parsed.txt"),
     write(""),
     closefile(output1),
     write("Enter the Sanskrit sentence : "), 
     readln(X),
     write("\nSentence(valid?) : "),      
     split_sentence(X),  
     openread(input, "c:/aparna/intermediate.txt"),
     openwrite(output2,"c:/aparna/intermediate2.txt"),
     readdevice(input),
     writedevice(output2),
     readln(Y),
     compact(Y),    
     closefile(output2),
     closefile(input),
     openread(input, "c:/aparna/intermediate2.txt"),
     openwrite(output2,"c:/aparna/parsed.txt"),
     readdevice(input),
     writedevice(output2),
     readln(Z),
     parsing(Z),    
     closefile(output2),
     closefile(input),
     openread(input, "c:/aparna/parsed.txt"),
     readdevice(input),
     readln(W),
     generate(W,1),
     closefile(input),
     writedevice(screen),
     readdevice(keyboard),
     write(".\n").
   goal   
      translate.
      
     