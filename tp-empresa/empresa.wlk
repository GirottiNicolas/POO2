import practicas.tp-empresa.reciboDeSueldo.*



class Empresa {
    var nombre
    var cuit
    const empleados
    const property recibos = #{}


    method sumarDeEmpleados(itemRecibo){
        return empleados.sum(itemRecibo)
    }

    method sueldosBrutos(){
        return self.sumarDeEmpleados(   {empleado => empleado.sueldoBruto()}  )
    }


    method sueldosNetos(){
        return self.sumarDeEmpleados(   {empleado => empleado.sueldoNeto()}    )
    }

    method retencionesEmpleados(){
        return self.sumarDeEmpleados(   {empleado => empleado.retenciones()}   )
    }

    method liquidacionDeSueldos(){
        empleados.forEach({
                    empleado => self.liquidarSueldo(empleado)
        })
    }

    method liquidarSueldo(empleado){
        empleado.registrarConceptos()
        const recibo = new ReciboDeSueldo(empleado = empleado)
        empleado.prepararNuevoMes()
        recibos.add(recibo)
    }

    

}
