object cambiadorDeDisfraces {
	method puedenIntercambiarTrajes(unaFiesta, unAsistente, otroAsistente) = self.estanEnLaFiesta(unaFiesta, unAsistente, otroAsistente) && self.algunEstaDisconforme(unaFiesta, unAsistente, otroAsistente) && self.algunoPasaAEstarConforme(unaFiesta, unAsistente, otroAsistente)

	method estanEnLaFiesta(unaFiesta, unAsistente, otroAsistente) = unaFiesta.tieneInvitadoA(unAsistente) && unaFiesta.tieneInvitadoA(otroAsistente)
	
	method algunEstaDisconforme(unaFiesta, unAsistente, otroAsistente) = !unAsistente.satisfechoConSuDisfraz(unaFiesta) || !otroAsistente.satisfechoConSuDisfraz(unaFiesta) 
	
	method algunoPasaAEstarConforme(unaFiesta, unAsistente, otroAsistente) {
		var unDisfraz = unAsistente.disfraz()
		var otroDisfraz = otroAsistente.disfraz()
		unAsistente.disfraz(otroDisfraz)
		otroAsistente.disfraz(unDisfraz)
		return unAsistente.satisfechoConSuDisfraz(unaFiesta) || otroAsistente.satisfechoConSuDisfraz(unaFiesta)
	}
} 