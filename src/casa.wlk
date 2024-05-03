import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {

	const property cosas = []
	const cuentaBancaria = cuentaCombinada
	
	method gastar(importe){
		cuentaBancaria.extraer(importe)
	}
	method comprar(cosa) {
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}

	method cantidadDeCosasCompradas() {
		return cosas.size()
	}

	method tieneComida() {
		return cosas.any({ cosa => cosa.esComida() })
	}

	method vieneDeEquiparse() {
		const element = cosas.last()
		return element.esElectrodomestico() || element.precio() > 50000
	}

	method esDerrochona() {
		return cosas.sum({ cosa => cosa.precio() }) > 90000
	}

	method compraMasCara() {
		return cosas.max({ cosa => cosa.precio() })
	}

	method electrodomesticosComprados() {
		return cosas.filter({ cosa => cosa.esElectrodomestico() })
	}

	method malaEpoca() {
		return cosas.all({ cosa => cosa.esComida() })
	}

	method queFaltaComprar(lista) {
		return lista.filter({ cosa => not self.cosas().contains(cosa) })
	}

	method faltaComida() {
		return cosas.all({ cosa => not cosa.esComida() })
	}

}

object cuentaCorriente {

	var property saldo = 0

	method depositar(importe) {
		saldo += importe 
	}

	method extraer(importe) {
		saldo -= importe 
	}

}

object cuentaConGastos {

	var property saldo = 0

	method depositar(importe) {
		saldo += (importe - 200)
	}

	method extraer(importe) {
		saldo -= if(importe > 10000)(importe + 200) else (importe + importe*0.2)
	}

}

object cuentaCombinada {

	const property cuentaPrimaria = cuentaCorriente
	const property cuentaSecundaria = cuentaConGastos
	var property saldo = 0
	
	method saldo(){
		saldo = cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
		return saldo
	}
	method depositar(importe) {
		cuentaPrimaria.depositar(importe)
	}

	method extraer(importe) {
		if (cuentaPrimaria.saldo() > importe) {
			cuentaPrimaria.extraer(importe)
		} else {
			cuentaPrimaria.extraer(cuentaPrimaria.saldo())
			cuentaSecundaria.extraer(importe - cuentaPrimaria.saldo())
		}
	}

}

