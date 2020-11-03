object cambiadorDeDisfraces {
	method puedenIntercambiarTrajes(unaFiesta, unAsistente, otroAsistente) = self.estanEnLaFiesta(unaFiesta, unAsistente, otroAsistente) && self.algunEstaDisconforme(unaFiesta, unAsistente, otroAsistente) && self.algunoPasaAEstarConforme(unaFiesta, unAsistente, otroAsistente)

	method estanEnLaFiesta(unaFiesta, unAsistente, otroAsistente) = unaFiesta.tieneInvitadoA(unAsistente) && unaFiesta.tieneInvitadoA(otroAsistente)
	
	method algunEstaDisconforme(unaFiesta, unAsistente, otroAsistente) = !unAsistente.satisfechoConSuDisfraz(unaFiesta) || !otroAsistente.satisfechoConSuDisfraz(unaFiesta) 
	
	method algunoPasaAEstarConforme(unaFiesta, unAsistente, otroAsistente) {
		self.intercambiarTrajes(unAsistente, otroAsistente)
		return unAsistente.satisfechoConSuDisfraz(unaFiesta) || otroAsistente.satisfechoConSuDisfraz(unaFiesta)
	}
	
	method intercambiarTrajes(unAsistente, otroAsistente) {
		const unDisfraz = unAsistente.disfraz()
		const otroDisfraz = otroAsistente.disfraz()
		unAsistente.disfraz(otroDisfraz)
		otroAsistente.disfraz(unDisfraz)
	}
} 