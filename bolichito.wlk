import objetos.*
import personas.*


object bolichito {
  var objetoEnMostrador = remera
  var objetoEnVidriera = placa

  method cambiarObjetoDelMostrador(unObjeto) {
    objetoEnMostrador = unObjeto
  }

  method cambiarObjetoDeLaVidriera(unObjeto) {
    objetoEnVidriera = unObjeto
  }
  //
  method esBrillante() {
    return objetoEnMostrador.material().esBrillante() and objetoEnVidriera.material().esBrillante()
  }

  //
  method esMonocromatico() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }

  //
  method estaEquilibrado() {
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }

  //
  method esDeColorYPuedeMejorar(unColor) {
    (objetoEnMostrador.color() == unColor and self.puedeMejorar(objetoEnMostrador)) or 
    (objetoEnVidriera.color() == unColor and self.puedeMejorar(objetoEnVidriera))
  }

  method puedeMejorar(unObjeto) {
    return (not unObjeto.estaEquilibrado()) or (unObjeto.esMonocromatico())
  }

  //
  method seLePuedeOfrecer(unaPersona) {
    unaPersona.leGusta(objetoEnMostrador) or unaPersona.leGusta(objetoEnVidriera)
  }
}