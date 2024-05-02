// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesas {
	method precio() { return 2600  }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaDeSalsaDeTomate {
	method precio() { return 900  }
	method esComida() { return true }
	method esElectrodomestico() { return false }	

}

object microondas {
	method precio() { return 42000  }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeCebollas {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	

}
object computadora {
	method precio() { return 500 * dolar.precioDeVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object packComida{
	const plato = [tiraDeAsado,paqueteDeFideos,kiloDeMilanesas]
	const adereso = [kiloDeCebollas,botellaDeSalsaDeTomate]
	
	method precio(){
		const platoElejido = plato.get(0.randomUpTo(plato.size() -1).roundUp())
		const aderesoElejido = adereso.get(0.randomUpTo(adereso.size() -1).roundUp())
		return platoElejido.precio() + aderesoElejido.precio()
	}
}

object dolar {
	method precioDeVenta(){
		return 1000
	}
}