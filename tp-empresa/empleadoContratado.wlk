import practicas.tp-empresa.empleado.Empleado


class Contratado inherits Empleado {
    const numeroContrato
    const property medioDePago

    override method sueldoBruto(){
        return sueldoBasico
    }

    override method retenciones(){
        return 50
    }

    override method registrarConceptos(){
        conceptosDeSueldo.add(["sueldo bruto ->" + self.sueldoBruto()])
        conceptosDeSueldo.add(["sueldo neto ->"+ self.sueldoNeto()])
    }

    override method conceptosAdicionales(){
        conceptosDeSueldo.add(["Gastos administrativos contractuales -> "+ self.retenciones()])
    }
}