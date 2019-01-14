/*****************************************************************************

		Copyright (c) My Company

 Project:  APARNA
 FileName: TRANSDUCER.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/
include "aparna.inc" 
predicates
   arc(integer,integer,string,string)
   %initial(integer)
   final(integer)
   prefinal(integer)
clauses
%initail state
   %initial(1). 
   
%final states
   final(999). 
%Prefinal states
   prefinal(14).
   prefinal(16). 
   prefinal(18).
   prefinal(19).
   
% words similar to Rama ( Noun,Mas,Akarantha)
   arc(1,12,"AcAry","N1(THE TEACHER)+").
   arc(1,12,"vqkS","N1(THE TREE)+").
   arc(1,12,"rAvaN","N1(RAVANA)+").
   arc(1,12,"rAm","N1(RAMA)+").
   
% declination of Rama and likes 
   	arc(12,13,"a","").
   	arc(13,999,"H","1S+NO%").   
   	arc(13,999,"M","2S+PRE%").
   	arc(13,14,"sy","").      
   	arc(13,999,"yoH","6/7D+POST/PRE%").
   	arc(12,999,"O","1/2D+NO/POST%").
   	arc(12,15,"A","").
   	arc(15,999,"H","1P+POST%").
   	arc(15,999,"n","2P+PRE%").
   	arc(15,999,"Byam","3/4/5D+PRE/PRE/PRE%").
   	arc(15,16,"y","").
   	arc(15,999,"w","5S+PRE%").
   	arc(12,999,"EH","3P+PRE%").
   	arc(12,17,"e","").
   	arc(17,18,"N","").
   	arc(17,999,"ByaH","4/5P+PRE/PRE%").
   	arc(17,19,"R","").
   	arc(14,999,"a","6S+POST%").
   	arc(16,999,"a","6S+POST%").
   	arc(18,999,"a","3S+PRE%").
   	arc(19,999,"u","7P+PRE%").
   	
%words similar to puswakaM(Akarantha napumsakalingam)
    arc(1,25,"Pal","N1((THE) FRUIT)+").
    arc(1,25,"puswak","N1((THE) BOOK)+").
    arc(1,25,"gqh","N1((THE) HOUSE)+").
    arc(1,25,"devAlay","N1((THE) TEMPLE)+").
    arc(1,25,"saMskqw","N1(SANSKRIT)+").
    arc(1,25,"miwr","N1((THE)FRIEND)+").
    arc(1,25,"vAhan","N1((THE)VEHICLE)+").
    arc(1,25,"vidyAlay","N1((THE) SCHOOL)+").
    arc(1,25,"mahAvidyAlay","N1((THE)COLLEGE)+").
%declination
	arc(25,26,"a","").%arc(12,13,"a","").
	arc(26,999,"m","1/2S+PRE%").
   	arc(25,27,"e","").%arc(12,17,"e","").
   	arc(25,28,"A","").%arc(12,15,"A","").
   	arc(28,999,"ni","1/2P+POST%").
   	arc(26,14,"sy","").      
   	arc(26,999,"yoH","6/7D+POST/PRE%").
   	arc(26,999,"Byam","3/4/5D+PRE/PRE/PRE%").
   	arc(26,16,"y","").
   	arc(28,999,"w","5S+PRE%").
   	arc(25,999,"EH","3P+PRE%").
   	arc(27,18,"N","").
   	arc(27,999,"ByaH","4/5P+PRE/PRE%").
   	arc(27,19,"R","").
   	arc(27,999,"","1/2D+NO").
%words similar to paT(verb, parasmypadi, all tenses)
   
   arc(1,22,"paT","V1(READ)+").
   arc(1,22,"krId","V1(PLAY)+").
   arc(1,22,"paw","V1(FALL)+").
   arc(1,22,"gacC","V1(GO)+").
   arc(1,22,"AgacC","V1(COME)+").
   arc(1,22,"liK","V1(WRITE)+").
   arc(1,22,"pA","V1(SAVE)+").
   arc(1,22,"pib","V1(DRINK)+").
   arc(1,22,"jAn","V1(KNOW)+").
   arc(1,22,"KAx","V1(EAT)+").
   arc(1,999,"AnIwaH","X(WAS BROUGHT)%").
   arc(1,999,"AsIw","V1(WAS)+IS+NO%").
      
% declination of PaT and likes

   	   arc(22,23,"a","").
	   arc(22,24,"A","").
	   arc(23,999,"wi","IS+POST%").
	   arc(23,999,"waH","ID+NO%").
	   arc(23,999,"nwi","IP+NO%").
	   arc(23,999,"si","IIS+NO%").
	   arc(23,999,"Wi","IID+NO%").
	   arc(23,999,"Wa","IIP+NO%").
	   arc(24,999,"mi","IIIS+NO%").
	   arc(24,999,"vaH","IIID+NO%").
	   arc(24,999,"maH","IIIP+NO%").
	   
%declination of as
   arc(1,999,"aswi","V1(I)+IS+POST%").	  
   arc(1,999,"swah","V1(ARE)+IIS+NO%").	  
   arc(1,999,"sanwi","V1(ARE)+IIIS+NO%").	  
   arc(1,999,"asi","V1(ARE)+IS+NO%").	  
   arc(1,999,"sWah","V1(ARE)+IIS+NO%").	  
   arc(1,999,"sWa","V1(ARE)+IIIS+NO%").	  
   arc(1,999,"asmi","V1(AM)+IS+NO%").	  
   arc(1,999,"svah","V1(ARE)+IIS+NO%").	  
   arc(1,999,"smah","V1(ARE)+IIIS+NO%").	  
   
% declination of Asmad 

   arc(1,999,"aham","N1(I)+1S+NO%").
   arc(1,999,"mAm","N1(ME)+2S+PRE%").
   arc(1,999,"mayA","N1(ME)+3S+PRE%").
   arc(1,999,"mahyam","N1(ME)+4S+PRE%").
   arc(1,999,"maw","N1(ME)+5S+PRE%").
   arc(1,999,"mama","N1(MY)+6S+POST%").
   arc(1,999,"mayi","N1(ME)+7S+PRE").
   arc(1,999,"AvAm","N1(WE)+1D+NO%").
   arc(1,999,"nO","N1(US)+2D+PRE%").
   arc(1,999,"AvAByAm","N1(US)+3/4/5D+PRE%").
   arc(1,999,"AvayoH","N1(OUR)+6/7D+PRE%").
   arc(1,999,"vayam","N1(WE)+1P+NO%").
   arc(1,999,"asmAn","N1(US)+2P+PRE%").
   arc(1,999,"asmABiH","N1(US)+3P+PRE%").
   arc(1,999,"asmAByAm","N1(US)+4P+PRE%").
   arc(1,999,"asmAw","N1(US)+5P+PRE%").
   arc(1,999,"asmAkam","N1(OUR)+6P+PRE%").
   arc(1,999,"asmAsu","N1(US)+7P+PRE%").
   
% declination of yuSmad 

   arc(1,999,"wvam","N1(YOU)+1S+NO%").
   arc(1,999,"wvAm","N1(YOU)+2S+PRE%").
   arc(1,999,"wvayA","N1(YOU)+3S+PRE%").
   arc(1,999,"wuByam","N1(YOU)+4S+PRE%").
   arc(1,999,"wvaw","N1(YOU)+5S+PRE%").
   arc(1,999,"wava","N1(YOUR)+6S+POST%").
   arc(1,999,"wvyi","N1(YOU)+7S+PRE").
   arc(1,999,"yuvAm","N1(YOU BOTH)+1D+NO%").
   arc(1,999,"vAm","N1(YOU BOTH)+2D+PRE%").
   arc(1,999,"yuvAByAm","N1(YOU BOTH)+3/4/5D+PRE%").
   arc(1,999,"yuvayoH","N1(YOUR)+6/7D+POST%").
   arc(1,999,"yUyam","N1(YOU All)+1P+NO%").
   arc(1,999,"yuSmAn","N1(YOU ALL)+2P+PRE%").
   arc(1,999,"yuSmABiH","N1(YOU ALL)+3P+PRE%").
   arc(1,999,"yuSmaByam","N1(YOU ALL)+4P+PRE%").
   arc(1,999,"yuSmAw","N1(YOU ALL)+5P+PRE%").
   arc(1,999,"yuSmAkam","N1(YOUR)+6P+POST%").
   arc(1,999,"yuSmAsu","N1(YOU ALL)+7P+PRE%").
   
%declination for waw(Masculine gender)

   arc(1,999,"sah","N1(HE)+1S+NO%").
   %arc(1,999,
   
%declination of ixam

   arc(1,999,"ixam","N1(THIS)+1S+NO%").
% indeclinables

   arc(1,999,"awra","N1(HERE)+1S+NO%").
   arc(1,999,"wawra","N1(THERE)+1S+NO%").