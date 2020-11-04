class Fiesta {
	var property fecha
	var property lugar
	var property asistentes
	
	method cantidadDeDiasDesde(unaFecha) = fecha - unaFecha
	method esUnBodrio() = asistentes.all({asistente => !asistente.satisfechoConSuDisfraz(self)})
	method mejorDisfraz() = asistentes.max({asistente => asistente.puntaje(self)}).disfraz()
	
	method tieneInvitadoA(asistente) = asistentes.contains(asistente)
	
	method puedeAsistir(asistente) = asistente.tieneDisfraz() && !self.tieneInvitadoA(asistente)
	
	method agregarAsistente(unAsistente) {
		if (self.puedeAsistir(unAsistente)) {
			asistentes.add(unAsistente)
		} else {
			throw new AsistenteNoPuedeAsistirException(message = "El asistente no puede asistir a la fiesta")
		}
	}
	
}

class AsistenteNoPuedeAsistirException inherits Exception{}

object fiestaInolvidable inherits Fiesta{
	
	override method puedeAsistir(asistente) = asistente.esSexy() && asistente.satisfechoConSuDisfraz(self)
	
}