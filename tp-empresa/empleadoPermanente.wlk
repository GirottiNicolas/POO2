import practicas.tp-empresa.empleado.Empleado


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

   override method conceptosAdicionales(){
        conceptosDeSueldo.add(["asignacion por conyugue (+) -> " + self.asignacionPorConyugue() ] )
        conceptosDeSueldo.add(["salario familiar (+) -> " + self.salarioFamiliar()])
        conceptosDeSueldo.add(["asignacion por hijos (+) -> " + self.asignacionPorHijos()])
        conceptosDeSueldo.add(["retencion por hijos (-) -> " + self.retencionPorHijos()])
        conceptosDeSueldo.add(["antiguedad (+) -> " + self.itemAntiguedad()])
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
