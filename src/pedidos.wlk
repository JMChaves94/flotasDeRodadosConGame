import rodados.*

class Pedido
{
    var property distancia
    var property tiempo
    var property pasajeros
    var property coloresIncompatibles = #{}

    method velocidadRequerida()
    {
        return distancia / tiempo
    }

    method puedeLlevar(rodado)
    {
        return rodado.velocidadMaxima() - self.velocidadRequerida() >= 10 and
        rodado.capacidad() >= self.pasajeros() and
        not coloresIncompatibles.any({color=>color == rodado.color()})

    }

    method acelerar()
    {
        tiempo = tiempo - 1
    }

    method relajar()
    {
        tiempo = tiempo + 1
    }
}