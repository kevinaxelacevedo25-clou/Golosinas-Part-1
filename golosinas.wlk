class Bombon {
  var peso = 15

  method peso() = peso
  method precio() = 5
  method gusto() = frutilla
  method esLibreDeGluten() = true
  method mordisco() { peso = (peso * 0.8) - 1 } 
}

class Alfajor {
  var peso = 300

  method peso() = peso
  method precio() = 12
  method gusto() = chocolate
  method esLibreDeGluten() = false
  method mordisco() { peso = peso * 0.8} 
}

class Caramelo {
  var peso = 5

  method peso() = peso
  method precio() = 1
  method gusto() = frutilla
  method esLibreDeGluten() = true
  method mordisco() { peso = peso - 1 } 
}

class Chupetin {
  var peso = 7
  method peso() = peso
  method precio() = 1
  method gusto() = naranja
  method esLibreDeGluten() = true
  method mordisco() { if(peso > 2){peso = peso * 0.9} else self.peso()}  
}

class Oblea {
  var peso = 250

  method peso() = peso
  method precio() = 5
  method gusto() = vainilla
  method esLibreDeGluten() = false
  method mordisco() {if(peso > 70){peso = peso * 0.5} else peso = peso * 0.75 }   
}

class Chocolatin {
  var peso 
  var gramosIncial  
  method pesoIncial() = gramosIncial
  method inicarGramos() { gramosIncial = peso } 
  method peso() = peso
  method cambiarPeso(unPeso) {peso = unPeso}
  method precio() = gramosIncial * 0.50
  method gusto() = chocolate
  method esLibreDeGluten() = false
  method mordisco() {peso = peso * 0.5}   
}

class GolosinaBañada {
  var peso 
  const golosinaInterna
  var capasDeGaseado = 2
  method capasDeGaseado() = capasDeGaseado 
  method goosinaInterna() = golosinaInterna
  method peso() = peso
  method cambiarPeso() { peso = golosinaInterna.peso() + 4}
  method precio() = golosinaInterna.precio() + 2
  method gusto() = golosinaInterna.gusto()
  method esLibreDeGluten() = golosinaInterna.esLibreDeGluten()
  method mordisco() {if(capasDeGaseado >= 0){ peso = golosinaInterna.mordisco() - 2}
  else{peso = golosinaInterna.mordisco()}
  capasDeGaseado =- 1
    }
}

//class PastillaTutti {}
//Falta hacer



// Sabores 
object frutilla {}
object vainilla {}
object naranja {}
object chocolate {}
object limon {}