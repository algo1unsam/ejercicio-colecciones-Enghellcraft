
object rolando {
	const artefactos = []
	const ordenArtefactos = []
	var poderBase = 5
	var poderDePelea = poderBase
	var capacidad = 2
	var contBat = 0
	method recolectaObjeto(_artefacto){
		if (artefactos.size() < capacidad){
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
	method tengoArtefacto(_artefacto){
		return ordenArtefactos.contains(_artefacto)
	}
	method nuevoPoder(){
		return self.cuantoPoderBase() + self.sumatoriaPoderes(rolando)
	}
	method sumatoriaPoderes(rolando){
	return artefactos.sum({artefacto => artefacto.poder()})
	}
	method cuantoPoderBase() {
		return poderBase
	}
	method cuantoPoder(){
		return poderDePelea
	}
	method esPoderoso() {
		return poderDePelea >= 10
	}
	method vencer(_enemigo) {
		contBat += 1
		poderBase += 1
		return poderDePelea > _enemigo.cuanPoderoso()
	}
	method contadorBatallas(){
		return contBat
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
  	method masPoderoso(duenio){
		return alijo.maxIfEmpty({artefacto => artefacto.poder(duenio)})
	} 
}
object espadaDelDestino {
	var poder = self.calculoPoder()
	var cont = 0
	method poder(){
		return poder
	}
	method calculoPoder(){
		if (cont < 1) {
			cont += 1
			return	rolando.cuantoPoder()
		} else {
			cont += 1
			return	(rolando.cuantoPoder())/2
		}
	}
}
object collarDivino {
	var poder = self.calculoPoder()
	var cantidadBatallas = 0
	method poder(){
		return poder
	}
	method calculoPoder(){
		if (rolando.cuantoPoder() <= 6) {
			return	3
		} else {
			return	(3 + rolando.contadorBatallas()) 
		}
	}
}
object armaduraValyrio {
	const poder = 6 
	method poder(){
		return poder
	}
}
object libroDeHechizos {
	const poder = 4 + rolando.cuantoPoder() + castillo.masPoderoso(duenio)
	const hechizos = []
	method poder(){
		
		return poder
	}
/////////
	method poder(duenio){
		return hechizos.first().poder(duenio)
	}	
	method agregarHechizo(hechizo){
		hechizos.add(hechizo)
	}
}
object bendicion {
	method poder(duenio){
		return 4
	}
}
object invisibilidad {
	method poder(duenio){
		return duenio.poder()
	}
}
object invicacion {
	method poder(duenio){
		return poder
	}
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