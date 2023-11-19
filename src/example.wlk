class Planeta {
	
}

class Habitante inherits Planeta{
	var valentia
	var inteligencia
	method poder(){return valentia + inteligencia}
}


class Soldado inherits Habitante{
	var potenciaArmamento
	var property potenciaEquipamientoAdicional
	const equipamientoAdicional = []
	const armamento = []
	method potenciaArmamento(){
		return armamento.sum{arma=>arma.potencia()>10 && not arma.estaDesgastada()}
	}
	override method poder(){return super() + self.potenciaArmamento()+
		self.potenciaEquipamientoAdicional()
	}
}
class ElementoDeCombate{
	var property esUtil
	var property estaDesgastado
	var property potencia
}

class SableDeLuz{
	var energia  = 200
	var tipo
}

object Maestro{
	var property tipo
	
}

class Jedi{
	var midiclorianos
	var tiempoLadoLuz
	var pazInterior
	var sable = new SableDeLuz(tipo = 1)	
	method poder() = super() + midiclorianos / 1000 + 
										sable.energia()*tiempoLadoLuz
}

class Sith{
	var tiempoLadoOscuro
	var sable = new SableDeLuz(tipo = 2)
	override method poder() = super() + 2 * sable.energia() + tiempoLadoOscuro
	
}
