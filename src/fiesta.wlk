class Fiesta {
	var property fecha
	var property lugar
	var property asistentes
	
	method disfrazFueCompradoConAnticipacion(fechaConfeccion) = fecha - fechaConfeccion > 2
	method esUnBodrio() = asistentes.all({asistente => !asistente.satisfechoConSuDisfraz(self)})
	method mejorDisfraz() = asistentes.max({asistente => asistente.puntaje(self)}).disfraz()
	
	method tieneInvitadoA(asistente) = asistentes.contains(asistente)
	method agregarAsistente(unAsistente) {
		asistentes.add(unAsistente)
	}
	
}

class AsistenteNoPuedeAsistirException inherits Exception{}

object fiestaInolvidable inherits Fiesta{
	
	method puedeAsistir(asistente) = asistente.esSexy() && asistente.satisfechoConSuDisfraz(self)
	
	override method agregarAsistente(asistente) {
		if (self.puedeAsistir(asistente)) {
			asistentes.add(asistente)
		} else {
			throw new AsistenteNoPuedeAsistirException(message = "El asistente no puede asistir a la fiesta inolvidable")
		}
	}
}