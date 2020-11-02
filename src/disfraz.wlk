class Disfraz {
	var property caracteristicas = []
	var property nombre
	var property fechaConfeccion
	
	method puntos(duenio,fiesta) = caracteristicas.sum({caracteristica => caracteristica.ountejae(duenio,fiesta)})	
	
	method mayorADiezPuntos(duenio,fiesta) = self.puntos(duenio,fiesta) > 10
	method nombrePar() = nombre.length().even()
	method trajeRapido(fiesta) = fechaConfeccion - fiesta.fecha() < 30 
	method puntajeIgualA(duenio,fiesta,puntaje) = self.puntos(duenio,fiesta) == puntaje
}

class Gracioso {
		var property nivelDeGracia
	
	method puntaje(duenio, fiesta) {
		return nivelDeGracia * self.multiplicador(duenio)
	}
	
	method multiplicador(duenio) {
		if (duenio.tieneMasDe(50)) {
			return 3
		} else {
			return 1
		}
	}
}

class Tobara {
	var property fechaDeCompra
	method puntaje(duenio, fiesta) {
		if (fiesta.disfrazFueCompradoConAnticipacion(fechaDeCompra)) {
			return 5
		} else {
			return 3
		}
	}
}

object sexy{
	method puntos(duenio,fiesta){
		if(duenio.esSexy()){ return 15 }
		else { return 2 }
	}
}

class Careta{
	var property personaje
	var property puntos = personaje.puntos()
}

object mickeyMouse{
	const property puntos = 8
}

object osoCarolina{
	const property puntos = 6
}
