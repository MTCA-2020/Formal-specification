---- MODULE contador ----
VARIABLE ctr
VARIABLE max

agregarUno(s) == IF 0 < ctr /\ ctr < max
                THEN ctr = ctr + 1
                ELSE ctr = ctr
quitarValor(x) == IF ctr < x
                THEN ctr = ctr + x
                ELSE ctr = ctr
