import pedidos.*
import vehiculos.*

class Dependencia {
	const vehiculos = []
	const empleados = []
	const listaPedidos = []

	
	method agregarEmpleado(empleado){
		return empleados.add(empleado)
	}
	
	method cantidadDeEmpleados(){
		return empleados.size()
	}

	method agregarAFlota(rodado){
		return vehiculos.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		return vehiculos.remove(rodado)
	}
	
	method pesoTotalFlota(){
		return vehiculos.sum({vehiculo => vehiculo.peso()})
	}
	
	method estaBienEquipada(){
		return vehiculos.size() >= 3 and 
		vehiculos.all({vehiculo => vehiculo.velocidadMaxima() >= 100})
	}
	
	method capacidadTotalEnColor(color){
		return vehiculos.filter({vehiculo => vehiculo.color() == color})
		.sum({vehiculo => vehiculo.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){
		return vehiculos.max({vehiculo => vehiculo.velocidadMaxima()}).color()
	}
	
	
	method capacidadFaltante(){
		return self.cantidadDeEmpleados() -
		 vehiculos.sum({ vehiculo => vehiculo.capacidad()})
	}
	
	method esGrande(){
		return self.cantidadDeEmpleados() >= 40 and 
		vehiculos.size() >= 5
	}
	
	method agregarPedido(pedido){
		return listaPedidos.add(pedido)
	}
	
	method quitarPedido(pedido){
		return listaPedidos.remove(pedido)
	}
	
	method totalDePasajerosDePedidos(){
		return listaPedidos.sum({pedido => pedido.cantidadPasajeros()})
	}
	
	method pedidosImposibles(){
		return listaPedidos.filter({ pedido =>
		vehiculos.all({ auto => not pedido.satisfacerPedido(auto) })})
	}
	
	method esColorIncompatible(color){
		return  listaPedidos.all({ p => p.coloresIncompatibles() == color})
	}
	
	method relajarTodosLosPedidos(){
		return listaPedidos.forEach({ p => p.relajar()})
	}
	
	
}
class Empleados {
	var property nombre = ""	
}



