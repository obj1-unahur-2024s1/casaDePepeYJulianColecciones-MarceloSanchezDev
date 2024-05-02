import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {

	const property cosas = []

	method comprar(cosa) {
		cosas.add(cosa)
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

