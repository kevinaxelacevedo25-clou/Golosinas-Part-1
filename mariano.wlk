import golosinas.*

object mariano {
  const property listaDeCompras = #{}
  const property listaDeGolosinasDeseadas = #{} 
  const property gustosDeseados = #{}


  method comprar(unaGolosina) {
    listaDeCompras.agregar(unaGolosina)
  } 
  method desechar(unaGolosina) {
    listaDeCompras.remove(unaGolosina)
  }
  method cantidadDeGolosinas() = listaDeCompras.size()
  method tieneLaGolosina(unaGolosina) = listaDeCompras.contains(unaGolosina)
  method probarGolosinas() {
    listaDeCompras.forEach({l => l.mordisco()})
  } 
  method hayGolosinaSinTACC() = listaDeCompras.any({l => !l.esLibreDeGluten()})
  method preciosCuidados() = listaDeCompras.all({l => l.precio() < 10})
  method golosinaDeSabor(unSabor) = listaDeCompras.filter({l => l.gusto(unSabor)}).first()
  method golosinasDeSabor(unSabor) =  listaDeCompras.filter({l => l.gusto(unSabor)})
  method sabores() = listaDeCompras.flatMap({l => l.gusto()})
  method golosinaMasCara() = listaDeCompras.precio().max()
  method pesoGolosinas() = listaDeCompras.sum({l => l.precio()})
  
  method golosinasDeseadas() = listaDeGolosinasDeseadas
  method agregarQueFalto(unaGolosina) {
    listaDeGolosinasDeseadas.add(unaGolosina)
  }
  method quitarDeListaDeseados(unaGolosina) {
    listaDeGolosinasDeseadas.remove(unaGolosina)
  }
  
  method gustosDeseados() = gustosDeseados
  method agregarGusto(unGusto) {
    gustosDeseados.add(unGusto)
  } 
  method quitarGusto(unGusto) {
    gustosDeseados.remove(unGusto)
  }
} 