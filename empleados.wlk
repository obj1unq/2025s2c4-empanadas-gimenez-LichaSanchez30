//Escribir aqui los objetos
object gimenez{
    var fondo = 300000

    method pagarSueldo(empleado) {
        fondo = fondo - empleado.cobrarSueldo()
    }

    method aumentarSueldo(empleado, nuevoSueldo) {
        empleado.sueldo(nuevoSueldo)
    }

    method consultarFondos() =  fondo
}

object galvan{
    var sueldo = 15000
    var deudaContraida = 0
    var dineroDisponible = 0

    method cobrarSueldo() = sueldo

    method sueldoRecibido() {
        dineroDisponible = self.cobrarSueldo()
    }
    method sueldo(_sueldo) {
      sueldo = _sueldo
    }

    method consultarSueldo() = sueldo

    method gastar(monto){
        deudaContraida = monto + deudaContraida        
       if(deudaContraida >= dineroDisponible){
           self.deuda()
       }else{
            self.dinero()
       }
    }

    
    method deuda() {
            deudaContraida = deudaContraida - dineroDisponible
            dineroDisponible = 0
    }
    

    method dinero(){
            dineroDisponible >= deudaContraida
            dineroDisponible = dineroDisponible - deudaContraida
            deudaContraida = 0
        
    }

    method dineroDisponible() = dineroDisponible
    method deudaContraida() = deudaContraida

}




object baigorria{
    var empVendidas = 0
    var pagoPorEmp = 15
    var ahorro = 0

    method venta(cantVendida){
        empVendidas = empVendidas + cantVendida
    }

    method empanadasVendidas() = empVendidas

    method cobrarSueldo() = empVendidas * pagoPorEmp

    method sueldo(_pagoPorEmp){
    
      pagoPorEmp = _pagoPorEmp
    
    }

    method totalCobrado(){
        ahorro = ahorro + self.cobrarSueldo()
        empVendidas = 0
    }

    method consultarAhorro() = ahorro
    
}

