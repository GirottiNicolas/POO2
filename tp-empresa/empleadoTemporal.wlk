import practicas.tp-empresa.empleado.Empleado
import practicas.tp-empresa.concepto.ConceptoDeSueldo


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


    override method registrarConceptosAdicionales(){
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem="Pasando los 50", valor= self.retencionPorCincuenton()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem="Descuento sobre extras", valor=self.descuentoSobreExtras()))
   }


}
