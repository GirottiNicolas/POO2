import practicas.tp-empresa.empresa.Empresa




class Empleado {
    const property nombre
    const property direccion
    const fechaNac 
    var estadoCivil
    var sueldoBasico
    const conceptosDeSueldo = #{}


    method edad(){
        const fechaActual = new Date()
        return fechaActual.year() - fechaNac.year()
    }

    method sueldoNeto(){
        return self.sueldoBruto() - self.retenciones()
    }

    
    method obraSocial(){
        return self.porcentajeDeSueldo(10)
    }

    method retenciones(){
        return self.obraSocial() + self.aportesJubilatorios()
    }

    method porcentajeDeSueldo(porcentaje){
        return (self.sueldoBruto() * porcentaje) / 100
    }

    method registrarConceptos(){
        conceptosDeSueldo.add(["sueldo bruto ->" + self.sueldoBruto()])
        conceptosDeSueldo.add(["sueldo neto ->"+ self.sueldoNeto()])
        conceptosDeSueldo.add(["obra social (-) ->" + self.obraSocial()])
        conceptosDeSueldo.add(["aportes jubilatorios (-) -> " + self.aportesJubilatorios()])
    }


    method prepararNuevoMes(){
        conceptosDeSueldo.clear()
    }


    method conceptosDeSueldo(){
        return conceptosDeSueldo.map({
                            concepto => concepto.first()
        })
    }

    method conceptosAdicionales()

    method aportesJubilatorios()

    method sueldoBruto()



}