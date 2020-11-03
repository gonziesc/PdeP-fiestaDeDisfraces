class Asistente {
	var property disfraz
	var property personalidad
	var property edad
	
	method esSexy() = personalidad.sexy(self)
	
	method tieneMasDe(unaEdad) = edad > unaEdad
	method tieneMenosDe(unaEdad) = edad < unaEdad
	
	method satisfechoConSuDisfraz(fiesta) = disfraz.mayorADiezPuntos(self,fiesta) && self.satisfechoSegunTipo(fiesta)
	method puntaje(fiesta) = disfraz.puntos(self, fiesta)
	method satisfechoSegunTipo(fiesta)
}

class Caprichoso inherits Asistente{
	 override method satisfechoSegunTipo(fiesta) = disfraz.nombrePar()
}

class Pretencioso inherits Asistente{
	override method satisfechoSegunTipo(fiesta) = disfraz.trajeRapido(fiesta)
}

class Numerologo inherits Asistente{
	var property puntaje
	
	override method satisfechoSegunTipo(fiesta) = disfraz.puntajeIgualA(self, fiesta, puntaje)
}
