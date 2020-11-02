class Asistente {
	var property disfraz
	var property personalidad
	var property edad
	
	method esSexy() = personalidad.sexy(self)
	
	method tieneMasDe(unaEdad) = edad > unaEdad
	method tieneMenosDe(unaEdad) = edad < unaEdad
	
	method satisfechoConSuDisfraz(fiesta) = disfraz.mayorADiezPuntos(self,fiesta)
	method puntaje(fiesta) = disfraz.puntaje(self, fiesta)
	
}

class Caprichoso inherits Asistente{
	 override method satisfechoConSuDisfraz(fiesta) = super(fiesta) && disfraz.nombrePar()
}

class Pretencioso inherits Asistente{
	override method satisfechoConSuDisfraz(fiesta) = super(fiesta) && disfraz.trajeRapido()
}

class Numerologo inherits Asistente{
	var property puntaje
	
	override method satisfechoConSuDisfraz(fiesta) = super(fiesta) && disfraz.puntajeIgualA(self, fiesta, puntaje)
}
