class Fiesta {
	var property fecha
	var property lugar
	var property asistentes
	
	method disfrazFueCompradoConAnticipacion(fechaConfeccion) = fecha - fechaConfeccion > 2
	method esUnBodrio() = asistentes.all({asistente => !asistente.satisfechoConSuDisfraz(self)})
	method mejorDisfraz() = asistentes.max({asistente => asistente.puntaje(self)}).disfraz()
	
	method tieneInvitadoA(persona) = asistentes.contains(persona)
	
}

object fiestaInolvidable inherits Fiesta{
	override method asistentes() = asistentes.filter({asistente => asistente.sexy() && asistente.satisfechoConSuDisfraz(self)})
}