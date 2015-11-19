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
#declare M = 12;
#declare a = 360/(2*M);

#declare T1 = transform {
    scale e1
    rotate <0,0,90>
    translate <R,0,0>
}

#declare T2 = transform {scale e1 translate <R,0,0>}

#declare c1=0;
#while (c1 < 2*M)
   torus {
    R r sturm
    texture { pigment { color 
     #switch(mod(c1,2))
     // Jaunes
     #case(0) Orange        #break         // Silver
     // Bleus
     #case(1) Turquoise     #break         // Light_Purple
     #end 
    } finish {ambient 0.5} }

    #if (mod(c1,2)=0)
     transform T1  
    #else
     transform T2
    #end
    rotate <0,a*c1,0>
   }
 #declare c1 = c1 + 1;
#end
