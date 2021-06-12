sig Counter {
	ctr: Int,
	maxi: Int
} 

pred agregar [c, c' : Counter]{
 c.ctr < c.maxi 
 c'.ctr = c.ctr.plus[1]
}
run agregar 	

pred quitar [c,c':Counter,d:Int]{
d > 0 &&  d < c.ctr 
 c'.ctr =c.ctr.sub[d]
}

run quitar 

fact Rango {
	all	 c : Counter | c.maxi= 5 and c.ctr>=0 and c.ctr <=c.maxi
}

assert fueraDeRango {
	no c:Counter | c.ctr>c.maxi  or c.ctr<0
}

assert agregarUno {
   all c : Counter | c.ctr > c.ctr.sub[1] 
}


check agregarUno for  5
