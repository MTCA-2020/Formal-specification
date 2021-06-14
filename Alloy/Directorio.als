sig Name {}
sig Inn {}
sig Out{}

sig Registro {
usuarios: set Name,
dentro: usuarios -> lone Inn,
afuera: usuarios -> lone Out
}

pred AddDentro [r, r': Registro, n: Name, d: Inn] {

      r'.dentro = r.dentro ++ (n->d)
}

run AddDentro for 1

pred DelDentro[r, r': Registro, n: Name, d: Inn]{
r'.afuera = r.afuera - (n->Out)
}

run DelDentro for 1

pred AddAfuera [r, r': Registro, n: Name, d: Out] {

r'.afuera = r.afuera ++ (n->d)
}

run AddAfuera for 1

pred DelAfuera[r, r': Registro, n: Name, d: Out]{
   r'.dentro = r.dentro - (n->Inn)
}

run DelAfuera for 1
