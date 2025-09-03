import practicas.tp-empresa.empleado.Empleado
import practicas.tp-empresa.concepto.ConceptoDeSueldo


class EmpleadoPermanente inherits Empleado {

    var cantDeHijos 
    var antiguedad
    var tieneConyugue



    method salarioFamiliar(){
        return self.asignacionPorHijos() + self.asignacionPorConyugue() + self.itemAntiguedad()
    }


    method asignacionPorHijos(){
        return 150 * cantDeHijos
    }

    override method retenciones(){
        return super() + self.retencionPorHijos() + self.aportesJubilatorios()
    }


    method retencionPorHijos(){
        return 20 * cantDeHijos
    }

    method itemAntiguedad(){
        return antiguedad * 50
    }

    method asignacionPorConyugue(){
        return if (tieneConyugue) { 100 } else { 0 }
    }

    override method sueldoBruto(){
        return self.salarioFamiliar() + sueldoBasico
    }

    override method aportesJubilatorios(){
        return self.porcentajeDeSueldo(15)
    }


   override method registrarConceptosAdicionales(){
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Asignacion por conyugue", valor=self.asignacionPorConyugue()) )
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Salario Familiar", valor = self.salarioFamiliar()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Asignacion por hijos", valor = self.asignacionPorHijos()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Retencion por hijos", valor = self.retencionPorHijos()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Antiguedad", valor = self.itemAntiguedad()))
   }

}



object nico inherits EmpleadoPermanente(nombre="sol"
                        ,direccion = ""
                        ,fechaNac = new Date(day = 12, month = 5, year = 2000)
                        ,estadoCivil = "soltero"
                        ,sueldoBasico = 30000
                        ,cantDeHijos = 1
                        ,tieneConyugue = true
                        ,antiguedad = 3) {

}
