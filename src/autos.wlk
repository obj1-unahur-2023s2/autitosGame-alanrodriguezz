import wollok.game.*

object unAuto {
	
	var image = "autitoRojo.png"
	var position
	
	method image() = image
	method image(nuevaImagen) {
		image = nuevaImagen
	}
	method position() = position
	method position(nuevaPosicion) {
		position = nuevaPosicion
	}
	
	method arriba() {
		if (position.y() < game.height() - 1)
			position = position.up(1)
		else
			position = game.at(position.x(), 0)
	}
	
	method abajo() {
		if (position.y() > 0)
			position = position.down(1)
		else
			position = game.at(position.x(), game.height() - 1)
	}
	
	method derecha() {
		if (position.x() < game.width() - 1)
			position = position.right(1)
		else
			position = game.at(0, position.y())
	}
	
	method izquierda() {
		if (position.x() > 0)
			position = position.left(1)
		else
			position = game.at(game.width() - 1, position.y())
	}
	
	
	method chocar() {
		image = ("estallido.jpg")
	}

}

object otroAuto {
	
	var image = "autitoVerde.png"
	var position
	
	method image() = image
	method image(nuevaImagen) {
		image = nuevaImagen
	}
	method position() = position
	method position(nuevaPosicion) {
		position = nuevaPosicion
	}
	
	
	method arriba() {
		if (position.y() < game.height() - 1)
			position = position.up(1)
		else
			position = game.at(position.x(), 0)
	}
	
	method abajo() {
		if (position.y() > 0)
			position = position.down(1)
		else
			position = game.at(position.x(), game.height() - 1)
	}
	
	method derecha() {
		if (position.x() < game.width() - 1)
			position = position.right(1)
		else
			position = game.at(0, position.y())
	}
	
	method izquierda() {
		if (position.x() > 0)
			position = position.left(1)
		else
			position = game.at(game.width() - 1, position.y())
	}
	
	
	method posicionAlAzar() {
		position = game.at(
							0.randomUpTo(game.width()).truncate(0),
							0.randomUpTo(game.height()).truncate(0)
							)
	}
}