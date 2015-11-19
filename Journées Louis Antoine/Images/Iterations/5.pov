#include "colors.inc"

camera {
    location <1, 8, -10>
    look_at  <0, 0,  0>
    angle 12
}

background { color White }

global_settings { ambient_light 0.4 }

light_source { 
  <2, 4, -3>*2 color 1.5*White
  area_light
  <-0.4,0.2,0>/7 <0.15,0.3,0.5>/7 8 8
}

plane { <0,-1,0> 2
  pigment { color White*1.1 }
  finish { ambient 0.9 diffuse 0.1}
}

#declare R = 1;
#declare r = 0.27;
#declare e1 = 0.9*(r/(R+r));
#declare M = 12; //Anciennement  12
#declare a = 360/(2*M);

#declare T1 = transform {
    scale e1
    rotate <0,0,90>
    translate <R,0,0>
}

#declare T2 = transform {scale e1 translate <R,0,0>}

#declare c1=0;
#while (c1 < 2*M)
 #declare c2=0;
 #while (c2 < 2*M)
  #declare c3=0;
  #while (c3 < 2*M)
   #declare c4=0;
   #while (c4 < 2*M)
    torus {
     R r sturm
     texture { pigment { color 
      #switch(mod(c1,2)+2*mod(c2,2)+4*mod(c3,2)+8*mod(c4,2))
      // Jaunes
      #case(0) BrightGold    #break         // OldGold   
      #case(1) BrightGold    #break
      #case(2) BrightGold    #break
      #case(3) BrightGold    #break
      // Autres Jaunes
      #case(4) Orange        #break
      #case(5) Orange        #break
      #case(6) Orange        #break
      #case(7) Orange        #break
      // Bleus
      #case(8)  SteelBlue     #break
      #case(9)  SteelBlue     #break
      #case(10) SteelBlue     #break
      #case(11) SteelBlue     #break
      // Autres Bleus
      #case(12) Turquoise     #break
      #case(13) Turquoise     #break
      #case(14) Turquoise     #break
      #case(15) Turquoise     #break
      #end 
     } finish {ambient 0.5} }

     #if (mod(c1,2)=0)
      transform T1  
     #else
      transform T2
     #end
     rotate <0,a*c1,0>
 
     #if (mod(c2,2)=0)
      transform T1  
     #else
      transform T2
     #end
     rotate <0,a*c2,0>
 
     #if (mod(c3,2)=0)
      transform T1  
     #else
      transform T2
     #end
     rotate <0,a*c3,0>

     #if (mod(c4,2)=0)
      transform T1  
     #else
      transform T2
     #end
     rotate <0,a*c4,0>
    }
    #declare c4 = c4 + 1;
   #end
   #declare c3 = c3 + 1;
  #end
  #declare c2 = c2 + 1;
 #end
 #declare c1 = c1 + 1;
#end
