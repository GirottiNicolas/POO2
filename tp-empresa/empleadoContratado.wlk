import practicas.tp-empresa.empleado.Empleado
import practicas.tp-empresa.concepto.ConceptoDeSueldo


class Contratado inherits Empleado {
    const numeroContrato
    const property medioDePago

    override method sueldoBruto(){
        return sueldoBasico
    }

    override method retenciones(){
        return 50
    }

    override method registrarConceptosBasicos(){
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Sueldo Bruto", valor = self.sueldoBruto()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Sueldo Neto", valor = self.sueldoNeto()))
    }

    override method registrarConceptosAdicionales(){
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Gastos administrativos contractuales", valor = self.retenciones()))

    }
}