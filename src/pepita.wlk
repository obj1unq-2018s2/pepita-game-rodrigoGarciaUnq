import ciudades.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 1)
	var property imagen = "pepita.png"


	method come(comida) {
		energia += comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	
	method teEncontro(algo){
		algo.alimentar(self)
	}

}
