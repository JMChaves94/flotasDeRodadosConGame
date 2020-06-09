import wollok.game.*
import colores.*

class Corsa {
	
	var property color 
	
	var property capacidad = 4
	
	var property velocidadMaxima = 150 
		
	var property peso = 1300 
	
	var property position = game.at(4, 7)

	var property posiciones = [position]
	
	var property image 
		
	method pasoPor(posicion) {return self.posiciones().contains(posicion)}
	
	method guardarPosicion() {posiciones.add(self.position())}
	
	method pasoPorFila(numero) {return self.filasDeX().contains(numero)}
	
	method filasDeX() {return posiciones.map({pos => pos.x()}).asSet()}
	
	method recorrioFilas(lista_de_numeros) {return lista_de_numeros.all({n => self.pasoPorFila(n)})}

	method moverArriba() {
		self.position(self.position().up(1)) 
		self.guardarPosicion()
	}

	method moverAbajo() {
		self.position(self.position().down(1)) 
		self.guardarPosicion()
	}
	
	method moverIzquierda() {
		self.position(self.position().left(1)) 
		self.guardarPosicion()
	}
	
	method moverDerecha() {
		self.position(self.position().right(1)) 
		self.guardarPosicion()
	}
	
	method cambiaARojo() {image = rojo.image()}
	
	method cambiaAAzul() {image = azul.image()}
	
	method cambiaAVerde() {image = verde.image()}
}

class Kwid {
	
	var property color = "Azul"
	var property tieneTanque = true
	
	
	method capacidad() { 
		return if(tieneTanque){3}
		else{4}
	}
	
	
	method velocidadMaxima() { 
		return if(tieneTanque){120}
		else{110}
	}
	
	
	method peso() { 
		return if(tieneTanque){1200 + 150}
		else{1200}
	}
	
	
	method sacarTanque() {
		tieneTanque = not tieneTanque 
	}

}


class AutosEspeciales {
	
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
	
	
}