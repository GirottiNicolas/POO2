import practicas.tp-empresa.empleado.Empleado



class EmpleadoTemporal inherits Empleado {

    var fechaFinDeAsignacion 
    var cantHorasExtras


    override method sueldoBruto(){
        return sueldoBasico + self.dineroPorHorasExtras()
    }

    method dineroPorHorasExtras(){
        return 40 * cantHorasExtras
    }

    override method retenciones(){
        return super() + self.retencionPorCincuenton() + self.descuentoSobreExtras()
    }

    method descuentoSobreExtras(){
        return 5 * cantHorasExtras
    }

    method retencionPorCincuenton(){
        return if (self.edad() > 50) { 25 } else { 0 }
    }

    override method aportesJubilatorios(){
        return self.porcentajeDeSueldo(10)
    }


    override method conceptosAdicionales(){
        conceptosDeSueldo.add(["pasando los 50 -> " + self.retencionPorCincuenton()])
        conceptosDeSueldo.add(["descuento sobre extras (-) -> " + self.descuentoSobreExtras()])
   }


}
