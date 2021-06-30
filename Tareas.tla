---- MODULE tareas ----
VARIABLE nombreEstudiante = ""
VARIABLE codigoTarea = {}
VARIABLE fecha = ""
VARIABLE hora = ""

registrarTarea(nombreEstudiante) nombreEstudiante  == nombreEstudiante
codTarea(codigoTarea)   codigoTarea == codigoTarea
obtenerTarea(codigoTarea) codigoTarea \in codigoTarea
setTarea(codigoTarea,nombreEstudiante,fecha,hora) ==
    codigoTarea == codigoTarea /\ nombreEstudiante == nombreEstudiante
    fecha == fecha  /\ hora == hora
