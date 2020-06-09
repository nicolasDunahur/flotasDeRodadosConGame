class Dependencia {
	var property flota = []
	var property cantEmpleados 
	
	
	method  agregarAFlota(rodado) {
		flota.add(rodado)
	}
	
	method  quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	
	method   pesoTotalFlota() {
		return flota.sum({auto => auto.peso()})
	}
	
	method  estaBienEquipada() {
		return flota.len()>3 and
		 flota.all({auto => auto.velodidadMaxima() > 99})
		 // o va max?
	}
	
	method  capacidadTotalEnColor(color) {
		return flota.filter({auto => auto.color() == color}).sum({auto => auto.capacidad()})
		
	}
	
	method  colorDelRodadoMasRapido() {
		return flota.max().color()
	}
	
	method  capacidadFaltante() {
		return self.cantEmpleados() - flota.sum({auto => auto.capacidad()})
	}
	
	method  esGrande() {
		return flota.len()>4 and self.cantEmpleados() > 39
	}
	
	/////////// REGISTRO DE PEDIDOS ////////////////
	
	const property  registroDePedidos = []
	
	method agregarPedido(pedido) {
		registroDePedidos.add(pedido)
	}
	
	method  quitarPedido(pedido) {
		registroDePedidos.remove(pedido)
	}
	
	method totalDePasajerosDelPedido(pedido){
		return registroDePedidos.sum({p => p.pasajeros()})
	}
	/* 
	method pedidosInsatisfechos(){
		return registroDePedidos.filter({p => p.elAuto_PuedeHacerElPedido() == color})
		flota.unoPorUno
		/// devie;ve una lista nuva
		
	}
	*/
	method elColor_EsIncompatible(unColor){
		return registroDePedidos.all({p => p.coloresIncompatible()== unColor})
	}
	
	method relajarTodosLosPedidos(){
		registroDePedidos.map({p => p.relajar()})
	}
}