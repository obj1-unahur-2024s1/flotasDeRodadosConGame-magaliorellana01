import dependencia.*
import vehiculos.*

class Pedidos{
	var property distancia
	var property tiempoMaximo
	var property cantidadPasajeros
	const property coloresIncompatibles = #{}
	
	method agregarColoresIncompatibles(color){
		return coloresIncompatibles.add(color)
	}
	
	method velocidadRequerida(){
		return distancia / tiempoMaximo
	}
	
	method satisfacerPedido(auto){
		return auto.velocidadMaxima() >= (self.velocidadRequerida() + 10) and
		auto.capacidad() >= cantidadPasajeros and not coloresIncompatibles.contains(auto.color())
		
	}
	
	method relajar(){
		
	}
	
	
	
}
