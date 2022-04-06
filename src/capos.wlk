
object rolando {
	const artefactos = []
	const ordenArtefactos = []
	var poderDePelea = 5
	const capacidad = 2
	method recolectaObjeto(_artefacto){
		if (artefactos.size() <= capacidad){
			ordenArtefactos.add(_artefacto)
			artefactos.add(_artefacto)
			}
	}
	method queLlevo(){
		return artefactos
	}
	method queTengo(){
		const inventario = #{}
		inventario.addAll(artefactos)
		inventario.addAll(castillo.queHayEnAlijo())
		return inventario
	}
	method queLevante(){
		return ordenArtefactos
	}
	method dejarEnCastillo() {
		castillo.guardoEnAlijo(artefactos)
		artefactos.removeAll(artefactos)
	}
	method nuevoPoder(_artefacto){
		poderDePelea += _artefacto.cuanPoderoso()
	}
	method cuantoPoder(){
			return poderDePelea
	}
	method esPoderoso() {
		return poderDePelea >= 10
	}
	method vencer(_enemigo) {
		return poderDePelea > _enemigo.cuanPoderoso()
	}
}
object castillo {
	const alijo = #{}
	method queHayEnAlijo(){
		return alijo
	}
	method guardoEnAlijo(_artefacto){
		alijo.addAll(_artefacto)
	}
/* 	method masPoderoso(){
		
		artef = 
		return artef.poder()
	}*/
}
object espadaDelDestino {
	const poder = rolando.cuantoPoder()
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
	/*const poder = [4, rolando.cuantoPoder(), castillo.masPoderoso()]*/
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
object caterina {
	const poder = 28
	const morada = 'Fortaleza de Acero'
	method cuanPoderoso(){
		return poder
	}
	method dondeVive(){
		return morada
	}
}
object astra {
	const poder = 14
	const morada = 'Torre de Marfil'
	method cuanPoderoso(){
		return poder
	}
	method dondeVive(){
		return morada
	}
}