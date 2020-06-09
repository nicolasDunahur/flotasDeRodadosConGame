import colores.*
import wollok.game.*

class Corsa {
	
	var property color 	
	var property velodidadMaxima = 150
	var property peso = 1300
	var property capacidad = 4
	 	
	method pesoMotor(){}
	method pesoInterior(){}	
	method tieneGas(){}
	
	var property position = game.at (4,7)
	var property image = "autitorojo.png"
	
	
	corsa.moverseALaDerecha()
	keyboard.left().onPressDo{corsa.moverseALaIzq()}	
	keyboard.up().onPressDo{corsa.moverseArriba()}
	keyboard.down().onPressDo{corsa.moverseAbajo()}	
	
}

class Kwid {
	
	var property color = azul	
	var property tieneGas = false
		
	method capacidad(){return if (tieneGas) 4 else 3 }
	method velodidadMaxima(){ return if (tieneGas)120 else 110 }
	method peso(){return if (tieneGas)1200 else 1350}
	method pesoMotor(){}
	method pesoInterior(){}
	
}

object trafic {

	var property color = blanco
	var property interiorComodo = false
	var property motorPulenta = false
	
	method capacidad(){return if (interiorComodo) 5 else 12}		
	method velodidadMaxima(){return if (motorPulenta) 150 else 80}
	method pesoMotor(){return if (motorPulenta) 800 else 1000}
	method pesoInterior(){return if (interiorComodo) 700 else 1000}
	method peso(){return self.pesoMotor() + self.pesoInterior() }
	method tieneGas(){}
}
	
class Especiales {
	
	var property color 	
	var property velodidadMaxima
	var property peso 
	var property capacidad
	
	method pesoMotor(){}
	method pesoInterior(){}
	method tieneGas(){}
			
}

