class Pedido {
	
	var property discancia
	var property tiempoMax
	var property pasajeros
	var property colorEsIncompatible
	var property velocidad = discancia/tiempoMax
	
	method elAutoPuedeHacerElPedido(unAuto) {
		return (unAuto.velocidadMaxima() - self.velocidad()).abs() > 10
			and unAuto.capacidad() >= self.pasajeros()
			and elColorDelAuto_EsIncompatible(unAuto)
	}

	method acelerar(){
		self.tiempoMax() = tiempoMax - 1
	}
	
	method relajar(){
		self.tiempoMax() += 1
	}
	
	method elColorDelAuto_EsIncompatible(unAuto){
		return self.colorEsIncompatible == unAuto.color()
	}