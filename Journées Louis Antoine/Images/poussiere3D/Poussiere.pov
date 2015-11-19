#include "colors.inc"

camera {
    location <0, 2, -10>
    look_at  <0, 0,  0>
    angle 20
}

background { color White }

global_settings { ambient_light 0.4 }

light_source { 
  <2, 4, -3>*2 color 1.5*White
  area_light
  <-0.4,0.2,0>/7 <0.15,0.3,0.5>/7 8 8
}

#declare R = 1;
#declare epsilon = 0.001;
#declare rapport = 1/3;

#declare bits = function(n,k) {(mod(n,pow(2,k)) - mod(n,pow(2,k-1)))/pow(2,k-1)} // Donne le k-ième bit en base 2 de l'entier n (donc renvoie 0 ou 1)
#declare signe = function(n,k) {2*bits(n,k)-1} // À partir du k-ième bit, obtient +1 ou -1

#declare croix = union {
	box {
	  <-R/3,-R,-R>, <R/3,R,R>
	}
	box {
	  <-R/3,-R,-R>, <R/3,R,R>
	  rotate <0,0,90>
	}
	box {
	  <-R/3,-R,-R>, <R/3,R,R>
	  rotate <0,90,0>
	}
	scale 1+epsilon
}

#declare T1 = transform {
    scale rapport
    translate <2*R/3,2*R/3,2*R/3>
}


difference {
	box { 
	  <-R, -R, -R>, <R, R, R>
	}
	object { croix }
	#declare c1 = 0;
	#while (c1 < 8)
		object { croix scale rapport translate <signe(c1,3)*2*R/3,signe(c1,2)*2*R/3,signe(c1,1)*2*R/3> }
		#declare c2 = 0;		
		#while (c2 < 8)
			object { croix scale rapport translate <signe(c1,3)*2*R/3,signe(c1,2)*2*R/3,signe(c1,1)*2*R/3> 
				scale rapport translate <signe(c2,3)*2*R/3,signe(c2,2)*2*R/3,signe(c2,1)*2*R/3>}
			#declare c2 = c2 + 1;
		#end
		#declare c1 = c1 + 1;
	#end
	pigment {
		gradient z*2*R
		color_map {
		    [0 rgb <0,0,0>]
		    [1 rgb <1,1,1>]
		}
	}
	finish { ambient 0.2 }
}


