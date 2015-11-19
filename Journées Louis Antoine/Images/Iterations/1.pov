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

torus {
  R r sturm 
  texture { pigment { color Green } finish {ambient 0.5} }
}
