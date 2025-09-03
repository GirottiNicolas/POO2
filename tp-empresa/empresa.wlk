import practicas.tp-empresa.reciboDeSueldo.*



class Empresa {
    var nombre
    var cuit
    const property empleados
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
                    empleado => self.prepararRecibo(empleado)
        })
    }

    method prepararRecibo(empleado){
        empleado.registrarConceptos()
        var recibo = new ReciboDeSueldo( nombreEmpleado = empleado.nombre()
                                        ,conceptos = empleado.conceptosDeSueldo()
                                        ,direccion = empleado.direccion()
                                        ,sueldoBruto = empleado.sueldoBruto()
                                        ,sueldoNeto=empleado.sueldoNeto())
        recibo.liquidar(empleado)
        recibos.add(recibo)
    }
    

}
