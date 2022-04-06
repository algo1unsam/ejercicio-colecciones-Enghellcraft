
object rolando {
	var artefactos = #{}
	var ordenArtefactos = []
	var poderDePelea = 5
	method recolectaObjeto(_artefacto){
		if (artefactos.size() <= 2){
			ordenArtefactos.add(_artefacto)
			artefactos.add(_artefacto)
			}
	}
	method queLlevo(){
		return artefactos
	}
	method queTengo(){
		var inventario = #{}
		inventario.addAll(artefactos)
		inventario.addAll(castillo.alijo)
		return inventario
	}
	method queLevante(){
		return ordenArtefactos
	}
	method dejarEnCastillo() {
		castillo.guardoEnAlijo(artefactos)
		artefactos.removeAll(artefactos)
	}
	method poder(_artefacto){
		poderDePelea += _artefacto.poder
	}
	method esPoderoso() {
		return poderDePelea >= 10
	}
	method vencer(_enemigo) {
		return poderDePelea > _enemigo.poder
	}
}
object castillo {
	var alijo = #{}
	method queHayEnAlijo(){
		return alijo
	}
	method guardoEnAlijo(_artefacto){
		alijo.addAll(_artefacto)
	}
}
object espadaDelDestino {
	const poder = rolando.poder(_poder)
	method poder(){
		return poder
	}
}
object collarDivino {
	const poder = 3
	method poder(){
		return poder
	}
}
object armaduraValyrio {
	const poder = 6 
	method poder(){
		return poder
	}
}
object libroDeHechizos {
	var poder = [4, rolando.poder(), castillo.masPoderoso]
}
object archibaldo {
	const poder = 16
	const morada = 'Palacio de Marmol'
	method cuanPoderoso(){
		return poder
	}
	method dondeVive(){
		return morada
	}
}
object astra {
	const poder = 28
	const morada = 'Fortaleza de Acero'
	method cuanPoderoso(){
		return poder
	}
	method dondeVive(){
		return morada
	}
}
object archibaldo {
	const poder = 14
	const morada = 'Torre de Marfil'
	method cuanPoderoso(){
		return poder
	}
	method dondeVive(){
		return morada
	}
}