import comidas.*

object roque {

	var  posicion = game.at(4, 4)
	var  alimento = alpiste
	var posicionRandom = game.at(1.randomUpTo(9), 1.randomUpTo(9))

	method imagen() = "jugador.png"

	method alimentar(algo) {
		if (alimento = null) {
			game.say(self, "No tengo alimento")		
		} 
		else {
			algo.come(alimento)
			game.addVisualIn(alimento,posicionRandom)
			alimento = null
			posicionRandom  = game.at(1.randomUpTo(9), 1.randomUpTo(9)) 
		}
	}

	method levantarComida(comida) {
		if (alimento != null) {
			game.addVisualIn(alimento, posicion.clone())
			alimento = comida
			game.removeVisual(comida)
		} else {
			alimento= comida
		}
	}

}

	
	
	