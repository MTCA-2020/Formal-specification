sig Persona {}
sig Telefono {}

sig Directorio {
persona: set Persona,
dir: persona -> one Telefono
}

pred añandeEntrada [b, b': Directorio, n: Persona, d: Telefono] {
b'.dir = b.dir ++ (n->d)
}

run añandeEntrada

pred borraEntrada [b, b': Directorio, n: Persona] {
b'.dir  = b.dir - (n->Telefono)
}

run borraEntrada

assert quitarDirectorio{
all bb1,bb2,bb3: Directorio,
n: Persona, d: Telefono|
añandeEntrada [bb1,bb2,n,d] && borraEntrada [bb2,bb3,n]
=> bb1.dir = bb3.dir
}


check quitarDirectorio for 3 but 2 Directorio

